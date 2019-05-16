#!/bin/bash
# depends on pandoc & wkhtmltopdf

## up to you to keep this up to date
function lsmethods(){
cat << EOF 
lsmethods: list all available methods for the project
generate
preview
EOF
}

SRC="build"
DST="output"

function generate(){
    echo "generate resume"
    cp $SRC/style.css $DST/style.css
    pandoc $SRC/resume.md -c style.css --template=$SRC/template.html -s -o $DST/index.html 
    wkhtmltopdf $DST/index.html $DST/jesus-gollonet-resume.pdf
}

# generate && open cv
function preview(){
    generate && o $DST/index.html
}

