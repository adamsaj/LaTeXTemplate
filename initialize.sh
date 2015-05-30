#!/bin/bash
##initializes new document from template
##usage: ./initialize.sh <document_name_without_extension>

cp .template.tex $1.tex
sed "s/template/$1/g" <Makefile >Makefile
rm -rf .git
git init
git add $1.tex .gitignore Makefile get_bibLibrary.sh initialize.sh
git commit -m "initial commit"
./get_bibLibrary.sh
