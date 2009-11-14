#ifndef __MemorySystem_h
#define __MemorySystem_h

#ifdef __cplusplus
extern "C"
{
#endif

    struct tag_MInstruction;

	typedef enum { MEM_CODE, MEM_DATA, MEM_HEAP } MemoryRangeType;
	void defineMemoryRange(unsigned long start, unsigned long end, MemoryRangeType);
	void storeData(unsigned long address, void *data, unsigned long length);
	void loadData(unsigned long address, void *data, unsigned long length);
    void storeInstruction(unsigned long address, struct tag_MInstruction *);
    struct tag_MInstruction *loadInstruction(unsigned long address);
    
    // Heap allocation
    unsigned long newData(unsigned long length); 
    void disposeData(unsigned long address);     

#ifdef __cplusplus
}

#include <list>
using namespace std;

class MemoryRange;

class MemorySystem
{
	list<MemoryRange*> ranges;
public:
	MemorySystem(void);
	~MemorySystem(void);
	void addRange(unsigned long start, unsigned long end, MemoryRangeType);
	void store(unsigned long address, void *data, unsigned long length);
	void load(unsigned long address, void *data, unsigned long length);
    void store(unsigned long address, tag_MInstruction *);
    tag_MInstruction *load(unsigned long address);
         
    unsigned long newData(unsigned long length); 
    void disposeData(unsigned long address);     
};

extern MemorySystem memory;

#endif

#endif
