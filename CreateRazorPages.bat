@echo off

:: ------------------------------------------------------------
:: create a solution with a razor pages project and a class library
:: add Serilog packages and EF Core
:: add virtualization folders
:: add a readme.md file
:: NOTE that the Nuget packages are the latest versions as of 07-2023
:: ------------------------------------------------------------

md RazorSolution
cd RazorSolution

:: create solution
dotnet new sln -n RazorSolution

:: Here we are not using top level statements
dotnet new webapp -o Demo1 --use-program-main

:: Add Serilog packages
dotnet add Demo1\Demo1.csproj package  Serilog.AspNetCore -v 7.0.0
dotnet add Demo1\Demo1.csproj package Serilog.Sinks.Console -v 4.1.0

:: Add Serilog Themes Library by Karen Payne
dotnet add Demo1\Demo1.csproj package SeriLogThemesLibrary -v 1.0.0.1

:: add virtualization folder
dotnet sln RazorSolution.sln add Demo1\Demo1.csproj --solution-folder RazorPages

:: add class library
dotnet new classlib -o DataLibrary

:: add Entity Framework Core package
dotnet add DataLibrary\DataLibrary.csproj package Microsoft.EntityFrameworkCore.SqlServer -v 7.0.9

:: add virtualization folder for class projects
dotnet sln RazorSolution.sln add DataLibrary\DataLibrary.csproj --solution-folder "Classes Projects"

cd Demo1

:: add reference to class library
dotnet add reference ../DataLibrary/DataLibrary.csproj

cd..

:: new file which once open the solution add it to the solution
echo # About> readme.md


pause