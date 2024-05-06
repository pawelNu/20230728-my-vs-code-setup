@echo off
chcp 65001

rem Sprawdź czy podano wszystkie wymagane argumenty
if "%~1"=="" (
    echo Podaj nazwę pliku Markdown jako pierwszy argument.
    exit /b
)
if "%~2"=="" (
    echo Podaj nazwę pliku HTML jako drugi argument.
    exit /b
)
if "%~3"=="" (
    echo Podaj ścieżkę do pliku ^(w podwójnych cudzysłowach^) szablonu HTML jako trzeci argument.
    exit /b
)

set "mdFile=%~1"
set "htmlFile=%~2"
set "templateFile=%~3"

set "current_date=%DATE%"

for /f "tokens=1-3 delims=." %%a in ("%current_date%") do (
    set "day=%%a"
    set "month=%%b"
    set "year=%%c"
)
for /f "tokens=1-3 delims=:,." %%a in ("%TIME%") do (
    set "hour=%%a"
    set "minute=%%b"
    set "second=%%c"
)

if "%hour:~0,1%"==" " set "hour=%hour:~1%"
if %hour% LSS 10 (set "hour=0%hour%")

set "formatted_date=%year%-%month%-%day%"
set "formatted_time=%hour%:%minute%:%second%"
set "begin=^<b^>Ostatnia aktualizacja:"
set "end=^</b^>"

echo.>> %mdFile%
echo %begin% %formatted_date% %formatted_time%%end% >> %mdFile%

pandoc -s %mdFile% -o %htmlFile% --template="%templateFile%" && (
    @echo Z pliku %mdFile% utworzono %htmlFile%.
) || (
    @echo Błąd podczas generowania pliku HTML.
)
