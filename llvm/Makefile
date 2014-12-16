all: build

build:
		cmake -Bllvm.nullcheckdce.build -Hllvm.nullcheckdce.template
		cd llvm.nullcheckdce.build && make
clean:
		cd llvm.nullcheckdce.build && make clean
