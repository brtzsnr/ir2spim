all: sim_aroma
lex.yy.c: analizor.l
	flex analizor.l

interpretor.tab.c: interpretor.y
	bison -d -v interpretor.y

lex.yy.o: lex.yy.c masina.h RegisterFile.h interpretor.tab.h common.h
	gcc -c -g lex.yy.c

interpretor.tab.o: interpretor.tab.c masina.h asamblor.h simulator.h MemorySystem.h RegisterFile.h
	gcc -c -g interpretor.tab.c

asamblor.o: asamblor.c common.h masina.h asamblor.h MemorySystem.h
	gcc -c -g asamblor.c
	
simulator.o: simulator.c masina.h simulator.h asamblor.h MemorySystem.h RegisterFile.h common.h
	gcc -c -g simulator.c 

MemorySystem.o: MemorySystem.cpp common.h MemorySystem.h masina.h
	g++ -c -g $< 

RegisterFile.o: RegisterFile.cpp RegisterFile.h
	g++ -c -g $< 

sim_aroma: interpretor.tab.o lex.yy.o asamblor.o simulator.o MemorySystem.o RegisterFile.o
	g++ -g -o sim_aroma $^
	
clean:
	rm -rf lex.yy.c interpretor.tab.* interpretor.output *.o *.gch sim_aroma







