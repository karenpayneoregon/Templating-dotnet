Working with dotnet custom templates. Note that the documentation Microsoft provides does not work correctly while the documentation and provided code samples work except for the item template SequenceHelpers which I have documented in createKarenConsole.bat

## Adding multiple projects to a solution

See CreatePower.ps1

## Documentation

- [Adding Other Projects and References](https://eleven-fifty-academy.gitbook.io/dotnet-302-core/1-intro-and-setup/1.5-adding-other-projects-and-references)
- [sayedihashimi docs](https://github.com/sayedihashimi/template-sample)
- [new templates](https://dotnetnew.azurewebsites.net/)

## Install

```
dotnet new install .\
```

## Uninstall

```
dotnet new uninstall .\
```

## Notes

- PowerShell and batch files are to be renamed.

## dotnet sln

Add multiple C# projects to the root of a solution:

```
dotnet sln todo.sln add todo-app/todo-app.csproj back-end/back-end.csproj --in-root
```

Add multiple C# projects to a solution:

```
dotnet sln todo.sln add todo-app/todo-app.csproj back-end/back-end.csprojs
```

Add multiple C# projects to a solution using a globbing pattern (Windows PowerShell only):

```
dotnet sln todo.sln add (ls -r **/*.csproj)
```

## dotnet add reference

[docs](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-add-reference)