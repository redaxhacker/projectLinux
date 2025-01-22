README.md: guessinggame.sh
	@echo "Projet : Jeu de devinette du nombre de fichiers" > README.md
	@echo "Date et heure : $(shell date)" >> README.md
	@echo "Nombre de lignes de code : $(shell wc -l < guessinggame.sh)" >> README.md

.PHONY: all
all: README.md
