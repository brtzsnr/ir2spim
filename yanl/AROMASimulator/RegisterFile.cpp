#include "RegisterFile.h"

// C language interface

extern "C" void defineRegisterFile(unsigned fileId, unsigned length, RegisterType type)
{
	switch(type)
	{
	case REG_TYPE_INT32: intRegs.add(fileId, length); break;
	case REG_TYPE_DOUBLE: doubleRegs.add(fileId, length); break;
	}
}

extern "C" void setReg(Register reg, unsigned long value) { intRegs.set(reg, value); }
extern "C" unsigned long getReg(Register reg) { return intRegs.get(reg); }
extern "C" void setDReg(Register reg, double value) { doubleRegs.set(reg, value); }
extern "C" double getDReg(Register reg) { return doubleRegs.get(reg); }

// Collection of register sets


Registers<unsigned long> intRegs;
Registers<double> doubleRegs;

// Duplicated definition - Workaround for GCC bug
template<>
Registers<unsigned long>::~Registers()
{
    iterator iti;
    for (iti = begin(); iti!= end(); iti++)
        delete iti->second;
}
template<>
Registers<double>::~Registers()
{
    iterator iti;
    for (iti = begin(); iti!= end(); iti++)
        delete iti->second;
}

template<>
RegisterSet<unsigned long> * Registers<unsigned long>::findSet(unsigned int fileId)
{
    iterator it = find(fileId);
    assert (it != end());
    return it->second;
}

template<>
RegisterSet<double> * Registers<double>::findSet(unsigned int fileId)
{
    iterator it = find(fileId);
    assert (it != end());
    return it->second;
}
