@echo off

md ConsoleSolution1
cd ConsoleSolution1

:: create solution
dotnet new sln -n ConsoleSolution1
dotnet new SerilogConsoleproj  -n ConsoleApp1 -o ConsoleApp1
:: add project to solution without solution folder
dotnet sln ConsoleSolution1.sln add ConsoleApp1\ConsoleApp1.csproj
cd..
pause