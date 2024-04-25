@echo off

set "mdFile=example.md"
set "htmlFile=example.html"
set "templateFile=docs_template.html"

pandoc -s %mdFile% -o %htmlFile% --template="%templateFile%"

@echo Z pliku %mdFile% utworzono %htmlFile%.
