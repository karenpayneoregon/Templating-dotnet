@echo off
md ConsoleSolution
cd ConsoleSolution

dotnet new sln --name ConsoleSolution
dotnet new console --name ConsoleApp1 --output ConsoleApp1 --use-program-main
dotnet add ConsoleApp1\ConsoleApp1.csproj package  Spectre.Console -v 0.47.0

dotnet new console --name ConsoleApp2 --output ConsoleApp2 --use-program-main

::dotnet sln add .\ConsoleApp1\ConsoleApp1.csproj

dotnet sln ConsoleSolution.sln add (Get-ChildItem -Recurse *.csproj)
pause