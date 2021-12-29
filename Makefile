.PHONY: default install configure setup lint convert copy open check

default: convert copy open

install:
	pip install proselint
	npm i -g @funboxteam/languagetool-node

configure:
	pwsh -Command "Copy-Item .\.languagetoolrc.js ~"

setup: install configure

# https://github.com/funbox/languagetool-node
lint:
	proselint ./formats/resume.txt
	languagetool-node ./formats/resume.txt

convert:
	cd formats && sh ./convert.sh

copy:
	cp .\formats\resume.html .\index.html

open:
	npx open-cli .\index.html

check:
	npx linkinator http://resume.jasonwohlgemuth.com