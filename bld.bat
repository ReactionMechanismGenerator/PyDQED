cp %PREFIX%\..\..\libs\libpython27.a %PREFIX%\libs

mingw32-make
%PYTHON% setup.py build_ext --compiler=mingw32 --inplace 
::install