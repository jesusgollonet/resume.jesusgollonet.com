#!bin/bash
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
    pandoc resume.md -c style.css -s -o index.html
}

# generate && open cv
function preview(){
    generate && o index.html
}

function publish(){
    generate 
    scp index.html style.css jgb:public_html/resume.jesusgollonet.com
}