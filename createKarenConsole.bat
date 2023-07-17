::----------------------------------------
:: item template at this point does not match the project name and 
:: is not added to the project file
::----------------------------------------
@echo off

md ConsoleSolution1
cd ConsoleSolution1

:: create solution
dotnet new sln -n ConsoleSolution1
dotnet new SerilogConsoleproj  -n ConsoleApp1 -o ConsoleApp1
cd ConsoleApp1
dotnet new shnextvalue
pause
cd..
:: add project to solution without solution folder
dotnet sln ConsoleSolution1.sln add ConsoleApp1\ConsoleApp1.csproj
cd..
pause