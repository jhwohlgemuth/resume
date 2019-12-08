default: convert copy open

convert:
	cd formats && sh ./convert.sh

copy:
	cp ./formats/resume.html ./index.html

open:
	npx open-cli ./index.html

check:
	npx linkinator http://resume.jasonwohlgemuth.com