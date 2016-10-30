SOURCES := $(wildcard *.hs)
OUT := $(SOURCES:.hs=.hi)
EXECUTABLES := $(SOURCES:.hs=)

all: $(OUT)

%.hi: %.hs
	ghc $< 

clean:
	rm *.o
	rm *.hi
	rm $(EXECUTABLES)

