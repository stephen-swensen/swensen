#!/bin/bash
if [ "$1" = "" ]
then
  echo "Usage: $0 <project name>"
  exit
fi

dotnet new classlib -lang F# -n $1 -o src
dotnet new nunit -lang F# -n $1Tests -o tests
dotnet add tests/$1Tests.fsproj package Unquote

dotnet new sln -n $1
dotnet sln add src/$1.fsproj
dotnet sln add tests/$1Tests.fsproj

dotnet restore
dotnet build --no-restore

echo "## $1" > README.md
echo -e ".PHONY: test\n\ntest:\n\tdotnet test" > Makefile
echo -e "obj\nbin\n" > .gitignore

git init
git add -A
git status
git commit -m "initial commit"
