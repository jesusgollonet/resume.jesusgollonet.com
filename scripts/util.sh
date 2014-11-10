#!/bin/bash
# depends on pandoc & wkhtmltopdf

## up to you to keep this up to date
function lsmethods(){
cat << EOF 
lsmethods: list all available methods for the project
generate
preview
publish
      
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

function publish(){
    generate 
    echo "publish resume"
    scp $DST/index.html $DST/style.css jgb:public_html/resume.jesusgollonet.com
    scp $DST/jesus-gollonet-resume.pdf jgb:public_html/resume.jesusgollonet.com/
    echo "resume published to http://resume.jesusgollonet.com"
    open http://resume.jesusgollonet.com
}
