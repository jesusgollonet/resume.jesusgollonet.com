#!bin/bash

# generate && open cv
function gencv(){
	pandoc resume.md -s -o resume.html && o resume.html
}