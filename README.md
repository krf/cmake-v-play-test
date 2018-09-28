# Using VPlay under CMake based system

This is a little test for running apps using the VPlay runtime under a CMake build system.

The test code was taken and adapted from VPlay's "AppPlayground" example.

The VPlay library is a CMake `IMPORTED` created by [this](vplay.cmake) file.

Successfully tested systems:

* Ubuntu 18.04 LTS
* Windows 10 (using MSVC 2017 64 bit)

## Usage

### Linux

```
export CMAKE_PREFIX_PATH=~/V-PlaySDK/V-Play/gcc_64/
mkdir build
cd build
cmake ..
./bin/app
```

### Windows (under PowerShell)

* Install the V-Play SDK to C:\V-PlaySDK
** Rerun MaintenanceTool to add the MSVC 2017 64 bit libs

```
$env:CMAKE_PREFIX_PATH = "C:\V-PlaySDK\5.11.1\msvc2017_64\"
$env:PATH = "C:\V-PlaySDK\5.11.1\msvc2017_64\bin;" + $env:PATH
mkdir build
cd build
cmake .. -G "Visual Studio 15 2017 Win64"
cmake --build . --config Release
.\bin\Release\app.exe
```
