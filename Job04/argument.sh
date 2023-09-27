#!/bin/bash

cat "$2" > "$1" && echo "Copie terminée avec succès dans $1." || echo "Erreur lors de la copie dans $1."

