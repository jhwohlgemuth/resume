REM Convert formats
SET FORMAT=ornl

cd formats/%FORMAT%
pandoc -f "markdown+smart" "resume.txt" -o "resume.docx" --metadata pagetitle="Resume of Jason Wohlgemuth"
pandoc -s "resume.txt" --template "templates/resume.template.html.html" -t "html5" -o "resume.html" --metadata pagetitle="Resume of Jason Wohlgemuth"
pandoc -s "resume.txt" --template "templates/resume.template.tex.tex" -o "resume.tex"
pandoc "resume.txt" --template "templates/resume.template.tex.tex" -o "resume.pdf"
REM Copy HTML file
Copy .\resume.html ..\..\index.html
REM Open HTML file
@REM npx open-cli ..\..\index.html
pause