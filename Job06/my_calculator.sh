if [[ $2 == "+" ]];
then
    echo "$(($1 + $3))"

elif [[ $2 == "-" ]];
then
    echo "$(($1 - $3))"

elif [[ $2 == "x" ]];
then
    echo "$(($1 * $3))"

elif [[ $2 == "/" ]];
then
    echo "$(($1 / $3))"

else
    echo "Erreur, écrire "+", "-", "x" ou "/" comme symbole d'opération" 

fi
