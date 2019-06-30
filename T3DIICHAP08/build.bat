set CommonCompilerFlags=-Od -Zi
set CommonLinkerFlags=gdi32.lib User32.lib ddraw.lib dinput.lib dinput8.lib dsound.lib winmm.lib Ole32.lib 
set EngineLinks=t3dlib1.lib t3dlib2.lib t3dlib3.lib t3dlib4.lib t3dlib5.lib t3dlib6.lib
pushd .\build

del *.pdb > NUL 2> NUL

cl %CommonCompilerFlags% /I ..\..\DirectX\Include /I ..\..\Engine\Interface /I ..\..\Engine\Source ..\demoII8_8.cpp /link /LIBPATH:..\..\DirectX\Lib /LIBPATH:..\..\Engine\build %CommonLinkerFlags% %EngineLinks%

popd