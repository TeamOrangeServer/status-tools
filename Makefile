.PHONY: all
all: github akari

.PHONY: github
github:
	git push -u origin master

.PHONY: akari
akari:
	git push -u akari master

.PHONY: pull
pull:
	git pull
