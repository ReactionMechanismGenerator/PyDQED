export CC=${PREFIX}/bin/gcc
export CXX=${PREFIX}/bin/g++
export F77=${PREFIX}/bin/gfortran
export F90=${PREFIX}/bin/gfortran
make
$PYTHON setup.py install

# Save version number stored in pydqed.pyx
$PYTHON -c 'from pydqed import __version__; print __version__' > ${SRC_DIR}/__conda_version__.txt

