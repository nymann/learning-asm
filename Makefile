SOURCES=$(wildcard src/*.asm)
OBJECTS=$(SOURCES:.asm=.o)
EXECUTABLE=bin/helloworld

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE):$(OBJECTS)
	ld -m elf_i386 $(OBJECTS) -o $@

$(OBJECTS): $(SOURCES)
	nasm -f elf -g $(SOURCES)

clean:
	rm -rf src/*.o $(EXECUTABLE)
