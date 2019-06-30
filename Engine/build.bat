@echo off

set CommonCompilerFlags=-Od -Zi
set CommonLinkerFlags=/LIBPATH:..\..\DirectX\Lib ddraw.lib
pushd .\build

del *.pdb > NUL 2> NUL

cl /c %CommonCompilerFlags% /I ..\Interface ..\Source\t3dlib1.cpp
cl /c %CommonCompilerFlags% /I ..\Interface ..\Source\t3dlib2.cpp
cl /c %CommonCompilerFlags% /I ..\Interface /I ..\..\DirectX\Include ..\Source\t3dlib3.cpp /link %CommonLinkerFlags%
cl /c %CommonCompilerFlags% /I ..\Interface /I ..\..\DirectX\Include ..\Source\t3dlib4.cpp
cl /c %CommonCompilerFlags% /I ..\Interface /I ..\..\DirectX\Include ..\Source\t3dlib5.cpp
cl /c %CommonCompilerFlags% /I ..\Interface /I ..\..\DirectX\Include ..\Source\t3dlib6.cpp

lib t3dlib1.obj
lib t3dlib2.obj
lib t3dlib3.obj
lib t3dlib4.obj
lib t3dlib5.obj
lib t3dlib6.obj

popd