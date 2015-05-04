Current instructions for openSUSE 13.1

  * install mono-complete and monodevelop packages from the Tehnari repositories (the offical repos are too out of date)
  * install libgnomeui missing dependency that causes monodevelop crash on startup
  * manually build and install F# 3.1 from sources (the fsharp package in the Tehnari repo is bad):
```
git clone -b fsharp_31 https://github.com/fsharp/fsharp fsharp31
cd fsharp31
./autogen.sh --prefix /usr
make
sudo make install
```
  * install F# add-in from the MonoDevelop add-in manager

Solving NuGet issues
  * for solutions using nuget package restore, rename all the files in the .nuget folder to lower-case, so that they are case-consistent with your MSBuild project and solutions files
  * install required ssl certs: http://stackoverflow.com/a/16589218/236255