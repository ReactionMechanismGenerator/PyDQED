################################################################################
#
#   Makefile for PyDQED
#
################################################################################


CFLAGS=-fPIC -O3
FFLAGS=-fallow-argument-mismatch

all: DQED cython

cython:
	pip install -e .

install:
	pip install .

DQED: libdqed.a

libdqed.a: dqed.o
	ar rcs libdqed.a dqed.o

dqed.o: dqed.f90
	$(F90) $(CFLAGS) $(FFLAGS) -c dqed.f90 -o dqed.o

clean: clean-DQED clean-cython
	rm -rf build

clean-DQED:
	rm -f dqed.o libdqed.a

clean-cython:
	rm -rf *.so *.pyc *.o *.c *.html build

help:
	@echo ""
	@echo "This makefile can be used to build PyDQED and its dependencies."
	@echo ""
	@echo "Typing \`make\` with no arguments will compile DQED to a static library"
	@echo "and compile the PyDQED Python module that provides the Python interface"
	@echo "to DQED."
	@echo ""
	@echo "Typing \`make clean\` will delete all of the intermediate build files,"
	@echo "compiled libraries, and compiled Python modules for DQED and the PyDQED"
	@echo "modules."
	@echo ""
	@echo "Individual dependencies can be specified using \`make <target>\`, where"
	@echo "<target> is one of:"
	@echo ""
	@echo "    DQED     to compile the DQED code"
	@echo "    cython   to compile the PyDQED Python wrapper modules"
	@echo ""

