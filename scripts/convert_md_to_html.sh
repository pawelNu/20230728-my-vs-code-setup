#!/bin/bash

# Ustawienie kodowania znaków na UTF-8
export LC_CTYPE=C.UTF-8

# Sprawdzenie czy podano wszystkie wymagane argumenty
if [ -z "$1" ]; then
    echo "Podaj nazwę pliku Markdown jako pierwszy argument."
    exit 1
fi
if [ -z "$2" ]; then
    echo "Podaj nazwę pliku HTML jako drugi argument."
    exit 1
fi
if [ -z "$3" ]; then
    echo "Podaj ścieżkę do pliku (w podwójnych cudzysłowach) szablonu HTML jako trzeci argument."
    exit 1
fi

mdFile="$1"
htmlFile="$2"
templateFile="$3"

# Pobranie aktualnej daty i czasu
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H:%M:%S")

# Dodanie informacji o aktualizacji na końcu pliku Markdown
echo "" >> "$mdFile"
echo "<b>Ostatnia aktualizacja: $current_date $current_time</b>" >> "$mdFile"

# Konwersja pliku Markdown na HTML za pomocą Pandoc
pandoc -s "$mdFile" -o "$htmlFile" --template="$templateFile"
if [ $? -eq 0 ]; then
    echo "Z pliku $mdFile utworzono $htmlFile."
else
    echo "Błąd podczas generowania pliku HTML."
fi

