if [ $# -eq 0 ]; then
  echo "Aucun argument n'a été passé."
  exit 1
fi

if [ "$1" == "Hello" ]; then
  echo "Bonjour, je suis un script !"
elif [ "$1" == "Bye" ]; then
  echo "Au revoir et bonne journée !"
else
  echo "Argument non reconnu : $1"
fi
