.PHONY: all
all: github akari

clean: gen_clean

.PHONY: github
github:
	git push -u origin master

.PHONY: akari
akari:
	git push -u akari master

.PHONY: pull
pull:
	git pull

.PHONY: gen_config
gen_config:
	mv .git/config .git/config.old
	cp .dev/config .git/config
#	cp .dev/patchs/setup.patch .git/setup.patch
	cp .dev/patchs/setup.patch .
	patch < setup.patch
#	echo "以下を実行してください"
#	echo "cd .git/" 
#	echo "patch < setup.patch"

.PHONY: gen_clean
gen_clean:
	rm config
	rm setup.patch
