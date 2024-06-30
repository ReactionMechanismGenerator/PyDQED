# PyDQED
## Python wrapper for the DQED constrained nonlinear optimization code

> [!WARNING]  
> PyDQED is no longer receiving updates. The ReactionMechanismGenerator organization has no developers capable of maintaining it.

The usage documentation is still relevant but no new updates will be released and we are unable to fix any bugs.
We will continue to release conda packages for PyDQED as long as possible.

To build PyDQED, clone this repository, install the dependencies (find them with `conda search -c rmg PyDQED`), upgrade whichever are causing problems, then navigate to the `.conda` directory and run `conda build .`.
Installation instructions in the documentation directory are _not_ up to date.

What follows is the original content of the README, slightly updated to removed erroneous instructions and dead links.

# Introduction

PyDQED provides a means for Python code to utilize DQED, a bounded, constrained nonlinear optimization code.
DQED is [publicly available](http://www.netlib.org/opt/dqed.f) and is distributed with PyDQED.
PyDQED provides a Python extension type for DQED, which in turn provides a Pythonic means of setting the solver options, providing residual and jacobian functions, and running the solver.

The code for DQED has been provided with the PyDQED package. The license for DQED is different than that of the PyDQED wrapper code. **You are responsible for knowing and abiding by all licenses associated with DQED as well as with PyDQED.**

# Installation
## Anaconda Binary (Recommended)

Install from the `rmg` conda channel:
```
conda install -c rmg pydqed
```

## Build Locally
### Dependencies

We build PyDQED using GitHub actions to support multiple versions of Python and platforms.

To build locally, you need the following dependencies (which will automatically be installed with conda when not building locally):
 - python
 - numpy
 - Cython
 - gfortran
 - gcc

### Building
A Makefile has been provided that can be used to compile DQED and the PyDQED wrapper code. To use, invoke the following command from the base package directory:
```
make
```

This command will build PyDQED in-place, rather than installing it to your Python package directory.
If you wish to formally install PyDQED, run the following command from the base package directory after the `make` command (you may need root privileges for this):
```
pip install .
```
