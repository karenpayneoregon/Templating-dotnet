@echo off
md ConsoleSolution
cd ConsoleSolution

dotnet new sln --name ConsoleSolution
dotnet new console --name ConsoleApp1 --output ConsoleApp1 --use-program-main
dotnet add ConsoleApp1\ConsoleApp1.csproj package  Spectre.Console -v 0.47.0
dotnet sln add .\ConsoleApp1\ConsoleApp1.csproj

pause