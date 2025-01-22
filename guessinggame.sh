#!/bin/bash

# Fonction pour compter le nombre de fichiers
count_files() {
  echo $(ls -1 | wc -l)
}

# Fonction principale
main() {
  correct_answer=$(count_files)
  guess=-1
  while [[ $guess -ne $correct_answer ]]
  do
    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
    read guess
    if [[ $guess -lt $correct_answer ]]
    then
      echo "Trop bas! Essayez encore."
    elif [[ $guess -gt $correct_answer ]]
    then
      echo "Trop haut! Essayez encore."
    else
      echo "Félicitations! Vous avez deviné correctement."
    fi
  done
}

# Appel de la fonction principale
main
