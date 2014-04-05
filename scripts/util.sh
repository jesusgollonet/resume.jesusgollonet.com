#!bin/bash

## up to you to keep this up to date
function lsmethods(){
cat << EOF 
  lsmethods: 
      list all available methods for the project
  gencv: 
      generate and open cv in html
EOF
}

# generate && open cv
function gencv(){
	pandoc resume.md -s -o resume.html && o resume.html
}