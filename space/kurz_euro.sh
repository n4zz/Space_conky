#!/bin/bash

#=======================================================================================
#                        Script pro ziskani meny z CNB
#=======================================================================================
#------------------------------ info ---------------------------------------------------


# smazání starého kurzovního lístku
cd ~/kurz_euro
rm denni_kurz.txt?

# stažení aktuálního kurzovního lístku ze stránek ČNB
wget -qP ~/kurz_euro/  https://www.cnb.cz/cs/financni-trhy/devizovy-trh/kurzy-devizoveho-trhu/kurzy-devizoveho-trhu/denni_kurz.txt?

# smazání starého souboru kurz_eura.txt
cd ~/kurz_euro
rm kurz_eura.txt

# řádek začínající slovem "EMU" ze staženého kurzovního lístku poslán do nového souboru
grep "EMU" ~/kurz_euro/denni_kurz.txt? > ~/kurz_euro/kurz_eura.txt

# nahrazení destinné čárky za tečku (v hodnotě 1EUR = xx,xxx), pro další zpracování
sed -i 's/,/./g' ~/kurz_euro/kurz_eura.txt

# tisk na řádek za sebou, 1 Euro =, následuje tisk hodnoty eura ze soboru kurz_eura.txt
# pomocí příkazu awk vytiskuta hodnota v 5 sloupci za znakem |, poté tisk slova CZK.
EUR=$(echo "     1 EUR = ";awk 'BEGIN {FS= "|"} {print $5}' ~/kurz_euro/kurz_eura.txt; echo "CZK")
echo $EUR


