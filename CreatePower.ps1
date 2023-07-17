<# 
    Create two console apps in a solution folder
    Add two projects to the solution
#>

New-Item -Path 'ConsoleSolution' -ItemType Directory

Set-Location -Path ConsoleSolution

dotnet new sln --name ConsoleSolution

dotnet new console --name ConsoleApp1 --output ConsoleApp1 --use-program-main
dotnet add ConsoleApp1\ConsoleApp1.csproj package  Spectre.Console -v 0.47.0

dotnet new console --name ConsoleApp2 --output ConsoleApp2 --use-program-main

dotnet sln ConsoleSolution.sln add (Get-ChildItem -Recurse *.csproj)

$path = $pwd
$ParentFolder = Resolve-Path (Join-Path $Path '..')

Set-Location -Path $ParentFolder