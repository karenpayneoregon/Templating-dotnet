@echo off

md RazorSolution1
cd RazorSolution1

:: create solution
dotnet new sln -n RazorSolution1
dotnet new karenrazorproj  -n SimpleWebApp -o SimpleWebApp
dotnet sln RazorSolution1.sln add SimpleWebApp\SimpleWebApp.csproj --solution-folder RazorPages

pause