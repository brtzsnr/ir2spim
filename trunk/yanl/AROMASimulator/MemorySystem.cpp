#include "common.h"
#include "MemorySystem.h"
#include "masina.h"

#include <assert.h>
#include <map>

MemorySystem memory;

// A single allocated memory page
class MemoryPage
{
	void setLimits(unsigned long *pAddress, void **pData, unsigned long *pLength);
public:
	unsigned long address;
	unsigned long size;
	unsigned char * data;

	MemoryPage(unsigned long aAddress, unsigned long aSize);
	MemoryPage(const MemoryPage &page);
	~MemoryPage() { delete[] data; }
	bool contains(unsigned long aAddress) { return aAddress >= address && aAddress <= address + size - 1; }
	bool contains(unsigned long aAddress, unsigned long aLength)
		{ return aAddress>=address && aAddress + aLength - 1 <= address + size - 1; }
	void store(unsigned long address, void *data, unsigned long length);
	void load(unsigned long address, void *data, unsigned long length);
};

// Create and zero-initialize a memory page
MemoryPage::MemoryPage(unsigned long aAddress, unsigned long aSize) : address(aAddress), size(aSize), 
		data(new unsigned char[aSize]) 
{
	memset(data, 0, aSize);
}

MemoryPage::MemoryPage(const MemoryPage &page) : address(page.address), size(page.size), data(page.data) {}

void MemoryPage::setLimits(unsigned long *pAddress, void **ppData, unsigned long *pLength)
{
	// Limit data stored to page size
	unsigned char *pData = (unsigned char *) *ppData;
	if (*pAddress < address)
	{
		pData += address - *pAddress; // Adjust the start point of data copied
		*pLength -= address - *pAddress;
		*pAddress = address;

	}

	// Adjust the end point of data copied to fit inside the page
	if (*pAddress + *pLength - 1 > address + size - 1)
		*pLength = address + size - *pAddress;

	*ppData = pData;
}

void MemoryPage::store(unsigned long aAddress, void *aData, unsigned long aLength)
{
	setLimits(&aAddress, &aData, &aLength);
	assert(contains(aAddress, aLength));
	memcpy((unsigned char *)data + (aAddress - address), aData, aLength);
}

void MemoryPage::load(unsigned long aAddress, void *aData, unsigned long aLength)
{
	setLimits(&aAddress, &aData, &aLength);
	assert(contains(aAddress, aLength));
	memcpy(aData, (unsigned char *)data + (aAddress - address), aLength);
}

// Table of memory pages. Indexed using the last address in the page

class MemoryPageTable : public map<unsigned long, MemoryPage *>
{
public:
	~MemoryPageTable();
	MemoryPage *lookup(unsigned long address);
	MemoryPageTable::iterator addPage(unsigned long start, unsigned long length);
    // Create pages on demand for some interval
	void createPages(unsigned long start, unsigned long length);
	void store(unsigned long address, void *data, unsigned long length);
	void load(unsigned long address, void *data, unsigned long length);
};

MemoryPageTable::~MemoryPageTable()
{
	for (iterator it=begin(); it!=end(); it++)
		delete it->second;
}

// Return the page containing an address, 0 if not found
MemoryPage * MemoryPageTable::lookup(unsigned long address)
{
	iterator it = lower_bound(address);
	if (it == end()) return 0; // Address after the last page
	MemoryPage *page = it->second;
	if (! page->contains(address)) return 0; // Address falls between pages
	return page;
}

// Add a single page
MemoryPageTable::iterator MemoryPageTable::addPage(unsigned long start, unsigned long length)
{
	// Index is the last address in the page.
	return insert(pair<unsigned long, MemoryPage*>(start + length - 1, new MemoryPage(start, length))).first;
}

// Create missing pages so the interval from start is fully allocated
void MemoryPageTable::createPages(unsigned long start, unsigned long length)
{
	iterator it = lower_bound(start); // find the first page that ends on or after start
	unsigned long remaining = length; // Address range that does not have a page yet
	unsigned long crtPageStart = start;
	while (it != end() && remaining > 0)
	{
		if (!it->second->contains(crtPageStart)) // Not inside an existing page? create a new one
		{
			int notFilled = min(it->second->address - crtPageStart, remaining);
			it = addPage(crtPageStart, notFilled);
			crtPageStart += notFilled;
			remaining -= notFilled;
			it++;
		}
		else
		{
			int filled = min(it->second->address + it->second->size - crtPageStart, remaining);
			crtPageStart += filled;
			remaining -= filled;
			it++;
		}
	}

	if (remaining > 0) // Create new page after the last one
	{
		addPage(crtPageStart, remaining);
	}
}

void MemoryPageTable::store(unsigned long address, void *data, unsigned long length)
{
	for (iterator it = lower_bound(address); it!=end() && it->second->address < address + length; it++)
		it->second->store(address, data, length);
}

void MemoryPageTable::load(unsigned long address, void *data, unsigned long length)
{
	for (iterator it = lower_bound(address); it!=end() && it->second->address < address + length; it++)
		it->second->load(address, data, length);
}

// A collection of pages within the same address range
class MemoryRange
{
protected:
	MemoryPageTable pages;
	void createPages(unsigned long address, unsigned long length, unsigned long pageSize);

public:	
	unsigned long start;
	unsigned long end;

	MemoryRange(unsigned long aStart, unsigned long aEnd) : start(aStart), end(aEnd) {}

	// True if store succeeded, false if failed
	virtual void store(unsigned long address, void *data, unsigned long length) = 0;
	virtual void load(unsigned long address, void *data, unsigned long length) = 0;
    virtual void store(unsigned long address, MInstruction *inst) = 0;
    virtual MInstruction *load(unsigned long address) = 0;
	virtual MemoryRangeType type() = 0;
	bool contains(unsigned long address, unsigned long length)
		{ return address >= start && address + length - 1 <= end; }
};

void MemoryRange::createPages(unsigned long address, unsigned long length, unsigned long pageSize)
{
	// Beginning of the first page where data is stored
	unsigned long baseAddress = (address / pageSize) *  pageSize;
	unsigned long nextPageAddress = ((address + length - 1 + pageSize) / pageSize) * pageSize;

	// Create pages on demand
	pages.createPages(baseAddress, nextPageAddress - baseAddress);
}

class CodeMemoryRange : public MemoryRange
{
    static const int CODE_PAGE_SIZE = 65536;
public:
	MemoryRangeType type() { return MEM_CODE; }
	CodeMemoryRange(unsigned long aStart, unsigned long aEnd) : MemoryRange(aStart, aEnd) {}
	void store(unsigned long address, void *data, unsigned long length);
	void load(unsigned long address, void *data, unsigned long length);
    void store(unsigned long address, MInstruction *inst);
    MInstruction *load(unsigned long address);
};

void CodeMemoryRange::store(unsigned long address, void *data, unsigned long length)
{
	Failure2("Scriere in segmentul de cod, adresa $%08x.", address);
}

void CodeMemoryRange::load(unsigned long address, void *data, unsigned long length)
{
	Failure2("Citire date din segmentul de cod, adresa $%08x.", address);
}

void CodeMemoryRange::store(unsigned long address, MInstruction *inst)
{
    // Assume alignment
    assert((address - start) % sizeof(inst) == 0);
    // Create pages on demand, fill with zeros
    createPages(address, sizeof(inst), CODE_PAGE_SIZE);
    pages.store(address, &inst, sizeof(inst));
}

MInstruction * CodeMemoryRange::load(unsigned long address)
{
    // Assume alignment
    assert((address - start) % sizeof(MInstruction *) == 0);
    
    // Read only from pages already created
    MInstruction *inst = 0;
    pages.load(address, &inst, sizeof(inst));
    if (!inst)
        Failure2("Nu exista cod memorat la adresa $%08x.", address);
    return inst;
}

class DataMemoryRange : public MemoryRange
{
	// Allocate data segments in 64K pages
	static const int DATA_PAGE_SIZE = 65536;
public:
	MemoryRangeType type() { return MEM_DATA; }
	DataMemoryRange(unsigned long aStart, unsigned long aEnd) : MemoryRange(aStart, aEnd) {}

	// Add a new page of length DATA_PAGE_SIZE that contains the address
	void store(unsigned long address, void *data, unsigned long length);
	void load(unsigned long address, void *data, unsigned long length);
    void store(unsigned long address, MInstruction *inst);
    MInstruction *load(unsigned long address);
};

void DataMemoryRange::store(unsigned long address, void *data, unsigned long length)
{
	// Create pages on demand
	createPages(address, length, DATA_PAGE_SIZE);

	// Store data in all necessary pages
	pages.store(address, data, length);
}

void DataMemoryRange::load(unsigned long address, void *data, unsigned long length)
{
	// Create pages on demand
	createPages(address, length, DATA_PAGE_SIZE);

	// Load data from all the pages that contain it
	pages.load(address, data, length);
}

void DataMemoryRange::store(unsigned long address, MInstruction *inst)
{
    Failure2("Cod stocat in zona de date, adresa $%08x.", address);
}

MInstruction * DataMemoryRange::load(unsigned long address)
{
    Failure2("Salt in zona de date, adresa $%08x.", address);
    return 0;
}

class HeapMemoryRange : public MemoryRange
{
public:
	MemoryRangeType type() { return MEM_HEAP; }
	HeapMemoryRange(unsigned long aStart, unsigned long aEnd) : MemoryRange(aStart, aEnd) {}
	void store(unsigned long address, void *data, unsigned long length);
	void load(unsigned long address, void *data, unsigned long length);
    void store(unsigned long address, MInstruction *inst);
    MInstruction *load(unsigned long address);
    
    // Allocation
    unsigned long newData(unsigned long length); 
    void disposeData(unsigned long address);     
};


void HeapMemoryRange::store(unsigned long address, void *data, unsigned long length)
{
	MemoryPage *page = pages.lookup(address);
	if (!page || !page->contains(address, length))
		Failure2("Scriere in zona nealocata din heap, adresa $%08x.", address);
	page->store(address, data, length);
}

void HeapMemoryRange::load(unsigned long address, void *data, unsigned long length)
{
	MemoryPage *page = pages.lookup(address);
	if (!page || !page->contains(address, length))
		Failure2("Citire din zona nealocata din heap, adresa $%08x.", address);
	page->load(address, data, length);
}


void HeapMemoryRange::store(unsigned long address, MInstruction *inst)
{
    Failure2("Cod stocat in zona de date, adresa $%08x.", address);
}

MInstruction * HeapMemoryRange::load(unsigned long address)
{
    Failure2("Salt in zona de date, adresa $%08x.", address);
    return 0;
}

unsigned long HeapMemoryRange::newData(unsigned long length)
{
    if (!length)
        Failure("Nu se poate aloca un obiect de dimensiune 0.");
        
    MemoryPageTable::iterator it;
    unsigned long pageStart, pageEnd;
    pageStart = start;
    for (it = pages.begin(); it != pages.end(); it++)
    {
        MemoryPage * page = it->second;
        pageEnd = page->address - 1;
        if (length <= pageEnd - pageStart + 1) // First fit
        {
            pages.addPage(pageStart, length);
            return pageStart;
        }
        pageStart = page->address + page->size;
    }
    
    // Free space at the end of the heap
    if (length <= end - pageStart + 1) // First fit
    {
        pages.addPage(pageStart, length);
        return pageStart;
    }
    
    Failure("Memorie plina; nu se mai pot aloca obiecte.");
    return 0;
}

void HeapMemoryRange::disposeData(unsigned long address)
{
    MemoryPageTable::iterator it = pages.lower_bound(address);
    if (it != pages.end() && it->second->address == address)
        pages.erase(it);
    else
        Failure2("Memoria de la adresa $08x nu a fost alocata in prealabil si nu se poate elibera.", address);
}

// All emulated memory
MemorySystem::MemorySystem(void)
{
}

MemorySystem::~MemorySystem(void)
{
	list<MemoryRange*>::iterator it;
	for (it=ranges.begin(); it!=ranges.end(); it++)
		delete (*it);
}

void MemorySystem::addRange(unsigned long  start, unsigned long  end, MemoryRangeType type)
{
	MemoryRange *range = 0;
	switch(type)
	{
	case MEM_CODE: range = new CodeMemoryRange(start, end); break;
	case MEM_DATA: range = new DataMemoryRange(start, end); break;
	case MEM_HEAP: range = new HeapMemoryRange(start, end); break;
	}
	assert(range);
	ranges.push_back(range);
}

void MemorySystem::store(unsigned long  address, void *data, unsigned long  length)
{
	list<MemoryRange*>::iterator it;
	for (it = ranges.begin(); it != ranges.end(); it++)
		if ((*it)->contains(address, length))
		{
			(*it)->store(address, data, length);
			return;
		}
	// No range found or error happened?
	Failure2("Scriere invalida in memorie, adresa $%08x.", address);
}

MInstruction * MemorySystem::load(unsigned long address)
{
	list<MemoryRange*>::iterator it;
	for (it = ranges.begin(); it != ranges.end(); it++)
		if ((*it)->contains(address, sizeof(MInstruction *)))
		{
			return (*it)->load(address);
		}
	// No range found or error happened?
	Failure2("Salt in afara zonei de cod, adresa $%08x.", address);
    return 0;
}

void MemorySystem::store(unsigned long address, MInstruction *inst)
{
    list<MemoryRange*>::iterator it;
    for (it = ranges.begin(); it != ranges.end(); it++)
        if ((*it)->contains(address, sizeof(MInstruction *)))
        {
            (*it)->store(address, inst);
            return;
        }
    // No range found or error happened?
    Failure2("Cod plasat in memorie in zona de date, adresa $%08x.", address);
}

void MemorySystem::load(unsigned long address, void *data, unsigned long length)
{
    list<MemoryRange*>::iterator it;
    for (it = ranges.begin(); it != ranges.end(); it++)
        if ((*it)->contains(address, length))
        {
            (*it)->load(address, data, length);
            return;
        }
    // No range found or error happened?
    Failure2("Citire invalida din memorie, adresa $%08x.", address);
}

unsigned long MemorySystem::newData(unsigned long length)
{
    list<MemoryRange*>::iterator it;
    for (it = ranges.begin(); it != ranges.end(); it++)
        if ((*it)->type() == MEM_HEAP)
            return ((HeapMemoryRange *)(*it))->newData(length);
    Failure("System does not have heap!");
    return 0;
}

void MemorySystem::disposeData(unsigned long address)
{
    list<MemoryRange*>::iterator it;
    for (it = ranges.begin(); it != ranges.end(); it++)
        if ((*it)->type() == MEM_HEAP)
        {
            ((HeapMemoryRange *)(*it))->disposeData(address);
            return ;
        }
    Failure("System does not have heap!");
}

extern "C" void defineMemoryRange(unsigned long start, unsigned long end, MemoryRangeType type)
{
	memory.addRange(start, end, type);
}

extern "C" void storeData(unsigned long address, void *data, unsigned long length)
{
	memory.store(address, data, length);
}

extern "C" void loadData(unsigned long address, void *data, unsigned long length)
{
	memory.load(address, data, length);
}

extern "C" MInstruction *loadInstruction(unsigned long address)
{
    return memory.load(address);
}

extern "C" void storeInstruction(unsigned long address, MInstruction *inst)
{
    memory.store(address, inst);   
}

extern "C"  unsigned long newData(unsigned long length) 
{ 
    return memory.newData(length);
}
 
extern "C"  void disposeData(unsigned long address)
{
    memory.disposeData(address);
}
