AMIGA_GCC_ROOT=/Users/papa/dev/amiga/compilation/amiga-gcc
AMIGA_GCC_BIN=$(AMIGA_GCC_ROOT)/bin
CC=$(AMIGA_GCC_BIN)/m68k-amigaos-gcc
LDFLAGS=
ODIR=build-gcc
VASM=$(AMIGA_GCC_BIN)/vasmm68k_mot

EXE=fs-uae/hd0/hello
_OBJ = hello.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

# Prepare variables for target 'clean'
ifeq ($(OS),Windows_NT)
	RM:=del
	PATHSEP:=\\
	CONFIG:=${CONFIG}_win
else
	RM:=rm -f 
	PATHSEP:=/
endif

all: $(EXE)

$(EXE) : $(OBJ) 
	$(CC) $(OBJ) -g -o $(EXE)

$(ODIR)/%.o : %.c
	$(CC) -g -c -o $@ $<

clean:
	-$(RM) $(ODIR)$(PATHSEP)*.o
	-$(RM) $(subst /,$(PATHSEP),$(EXE))