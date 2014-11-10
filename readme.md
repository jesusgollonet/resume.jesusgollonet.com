My resume in markdown + a few shell functions to generate, preview and publish

[resume.jesusgollonet.com](http://resume.jesusgollonet.com)

## use
There are a few tasks in scripts/util.sh. Go there for up to date info
To be able to execute tasks you'll have to load the utility script. Run this on the project root folder:

$>`. scripts/util.sh` 

From there, you can 

$> `generate`

Generates html and pdf versions of the resume

$> `preview`

Opens html version in a browser (runs generate)

$> `publish` 


## Dependencies
- [pandoc](http://johnmacfarlane.net/pandoc/) (for markdown to html)
- [wkhtmltopdf](http://wkhtmltopdf.org/) (html to pdf)
