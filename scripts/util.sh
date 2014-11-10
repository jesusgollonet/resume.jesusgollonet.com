#!/bin/bash
# depends on pandoc

## up to you to keep this up to date
function lsmethods(){
cat << EOF 
lsmethods: list all available methods for the project
generate
preview
publish
      
EOF
}


function generate(){
    echo "generate resume"
    pandoc resume.md -c style.css --template=template.html -s -o index.html
    wkhtmltopdf index.html jesus-gollonet-resume.pdf
}

# generate && open cv
function preview(){
    generate && o index.html
}

function publish(){
    generate 
    echo "publish resume"
    scp index.html style.css jgb:public_html/resume.jesusgollonet.com
    scp jesus-gollonet-resume.pdf style.css jgb:public_html/resume.jesusgollonet.com/
    echo "resume published to http://resume.jesusgollonet.com"
    open http://resume.jesusgollonet.com
}
