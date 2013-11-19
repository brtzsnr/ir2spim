all: build test

build:
	javac -cp "lib/*" -d ./bin -sourcepath ./src ./src/LCPL*.java ./src/ro/pub/cs/lcpl/*.java

clean:
	rm -rf ./bin/*

ASTDIR = ../lcpl.reference.ast/bin
TESTS = $(wildcard $(ASTDIR)/*.ast $(ASTDIR)/*/*.ast)
TARGETS = $(patsubst $(ASTDIR)/%.ast,bin/%.run,$(TESTS))
REFS = $(patsubst bin/%.run,bin/%.ref,$(TARGETS))
ERRORS = $(patsubst $(ASTDIR)/%.ast,bin/%.err,$(TESTS))

jar: clean build
	echo "Main-Class: LCPLSemant" > bin/manifest.txt
	(cd bin && jar xf ../lib/snakeyaml-1.13.jar)
	jar cfm ../LCPLSemant.jar bin/manifest.txt  -C bin .

test: clean_targets run_tests

clean_targets:
	rm -f $(TARGETS)

run_tests: $(TARGETS)

refs: $(REFS) $(ERRORS)

bin/%.run: $(ASTDIR)/%.ast
	mkdir -p $(dir $@)
	java -cp "lib/*;./bin" -ea LCPLSemant $^ $@
	@echo ----------------------------
	@java -cp "lib/*;./bin" -ea LCPLSemant $@ --run
	@echo
	@echo ----------------------------

bin/%.ref: bin/%.run
	java -cp "lib/*;./bin" -ea LCPLSemant $^ --run > $@

bin/%.err: $(ASTDIR)/%.ast
	java -cp "lib/*;./bin" -ea LCPLSemant $^ bin/runtemp 2> $@
	