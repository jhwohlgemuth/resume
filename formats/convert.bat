REM Resume Converter

pandoc -s -S resume.txt -o resume.docx

pandoc -s resume.txt --template "X:\sites\resume.jasonwohlgemuth\formats\templates\resume.template.html.html" -t html5 -o resume.html

pandoc -s resume.txt --template "X:\sites\resume.jasonwohlgemuth\formats\templates\resume.template.tex.tex" -o resume.tex

pandoc resume.txt --template "X:\sites\resume.jasonwohlgemuth\formats\templates\resume.template.tex.tex" -o resume.pdf

pause
