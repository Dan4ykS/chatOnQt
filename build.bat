set OUTPUT=distr
set DISTR=build
set PATH=C:\QT\Tools\mingw730_64\bin;C:\QT\5.14.1\mingw73_64\bin;C:\QT\Tools\mingw730_64\bin;D:\Python38\Scripts\;D:\Python38\;C:\Users\dan28\AppData\Local\Programs\Python\Python38-32\Scripts\;C:\Users\dan28\AppData\Local\Programs\Python\Python38-32\;C:\Users\dan28\AppData\Local\Programs\Python\Python38\Scripts\;C:\Users\dan28\AppData\Local\Programs\Python\Python38\;C:\windows\system32;C:\windows;C:\windows\System32\Wbem;C:\windows\System32\WindowsPowerShell\v1.0\;C:\windows\System32\OpenSSH\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files\Git\cmd;D:\WinMerge;D:\Node.js\;C:\Users\dan28\AppData\Local\Programs\Python\Python37-32\Scripts\;C:\Users\dan28\AppData\Local\Programs\Python\Python37-32\;D:\Ruby26-x64\bin;C:\Users\dan28\AppData\Local\Microsoft\WindowsApps;C:\Users\dan28\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\bin;C:\Open Server\OSPanel\modules\php\PHP_7.3-x64;D:\Python38;D:\Python38\Scripts;C:\Users\dan28\AppData\Roaming\npm;D:\LLVM\bin;C:\QT\Tools\QtCreator\bin\qtcreator.exe;
RD /S /Q %OUTPUT% 
RD /S /Q %DISTR%
mkdir %OUTPUT%
mkdir %DISTR%
cd %OUTPUT% 
qmake ..\
mingw32-make
cd ..
copy /B %OUTPUT%\*.exe %DISTR%
windeployqt.exe --compiler-runtime %DISTR% --qmldir .
