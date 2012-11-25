all: clean build generate

clean:
	rm -rf ./bin/coolir/*.class
	rm -rf ./bin/*.class
	rm -rf ./test/*.ll
	rm -rf ./test/*.out
	rm -rf *.bc

build:
	javac -classpath "./lib/java-cup-11a-runtime.jar" -d "./bin" src/coolir/*.java

generate:
	./generate.sh
