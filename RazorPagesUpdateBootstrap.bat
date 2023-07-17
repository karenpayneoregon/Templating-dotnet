@echo off
:: ------------------------------------------------------------
:: Update Bootstrap
:: cab only run once as per init command can only run once
:: ------------------------------------------------------------
@RD /S /Q "RazorSolution\Demo1\wwwroot\lib\bootstrap"
cd RazorSolution\Demo1
libman init --default-provider cdnjs
libman install bootstrap@5.3.0 --destination  wwwroot/lib/bootstrap/dist
cd ..\..
pause