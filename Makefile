convert:
	cd formats && sh ./convert.sh

copy:
	cp ./formats/resume.html ./index.html

open:
	npx open-cli ./index.html