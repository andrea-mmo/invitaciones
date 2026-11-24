#!/bin/zsh
# Uso: ./nueva.sh <plantilla> <nombre-proyecto>
# Ej.: ./nueva.sh boda-sobre-sello boda-ana-y-luis
# Copia la plantilla a ../<nombre-proyecto> (repo aparte, para datos reales) y lo inicializa con git.
set -e
cd "$(dirname "$0")"
[[ -d plantillas/$1 && -n $2 ]] || { echo "Uso: ./nueva.sh <plantilla> <nombre-proyecto>"; echo "Plantillas:"; ls plantillas; exit 1; }
dest="../$2"
[[ -e $dest ]] && { echo "Ya existe $dest"; exit 1; }
cp -R "plantillas/$1" "$dest"
rm -f "$dest/.DS_Store"
git -C "$dest" init -q
echo "Creado $dest. Edita shared/config.js y shared/i18n.js; los datos reales no vuelven a este repo."
