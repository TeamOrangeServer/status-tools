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

.PHONY: setup
setup:
	mv .git/config .git/config.old
	cp .dev/config .git/config
#	cp .dev/patchs/setup.patch .git/setup.patch
	cp .dev/patchs/setup.patch .
	patch < setup.patch
#	echo "以下を実行してください"
#	echo "cd .git/" 
#	echo "patch < setup.patch"

.PHONY: clean
clean:
	rm setup.patch
