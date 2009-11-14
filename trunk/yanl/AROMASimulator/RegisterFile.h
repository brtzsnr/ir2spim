#ifndef __RegisterFile_h
#define __RegisterFile_h

#ifdef __cplusplus
extern "C"
{
#endif

	typedef enum { REG_TYPE_INT32, REG_TYPE_DOUBLE } RegisterType;

	// Define a set of registers with a common type. Set length = 0 for unlimited # of registers.
	void defineRegisterFile(unsigned fileId, unsigned length, RegisterType);

	typedef struct 
	{
		unsigned fileId;
		unsigned index;
	} Register;

	void setReg(Register reg, unsigned long value);
	unsigned long getReg(Register reg);
	void setDReg(Register reg, double value);
	double getDReg(Register reg);

#ifdef __cplusplus
}

#include <map>
#include <vector>
#include <cassert>
using namespace std;

template <typename T>
class RegisterSet
{
	vector<T> values;
	unsigned maxLength;
public:
	RegisterSet(unsigned length) : maxLength(length) {}
	~RegisterSet(void) {}

	void set(unsigned index, T value);
	T get(unsigned index);
};

// Set / get register values with check

template <typename T>
void RegisterSet<T>::set(unsigned int index, T value)
{
	assert (maxLength==0 || index<maxLength);
	if (index >= values.size()) // Resize the vector automatically to allocate new registers on demand
	{
		if (index >= values.capacity())
			values.reserve(index * 2 + 1);
		values.resize(index + 1, (T)0);
	}
	values[index] = value;
}

template <typename T>
T RegisterSet<T>::get(unsigned int index)
{
	assert (maxLength==0 || index<maxLength);
	return index < values.size() ? values[index] : (T)0;
}

// All register sets 

template<typename T>
class Registers : map<unsigned, RegisterSet<T>*> 
{
	// Map a register set id (fileId) to the actual set
	//map<unsigned, RegisterSet<T>*> regs;

	// Search for a register set using its id
	RegisterSet<T> *findSet(unsigned fileId);
public:
	Registers(void) {}
	~Registers(void);
   
	// Add a new register set
	void add(unsigned fileId, unsigned length);

	// Read / write register value
	void set(const Register& reg, T value) { findSet(reg.fileId)->set(reg.index, value); }
	T get(const Register& reg)      { return findSet(reg.fileId)->get(reg.index); }
};

template<typename T>
void Registers<T>::add(unsigned int fileId, unsigned int length)
{
	insert(pair<unsigned, RegisterSet<T>*>(fileId, new RegisterSet<T>(length)));
}

extern Registers<unsigned long> intRegs;
extern Registers<double> doubleRegs;

#endif

#endif
