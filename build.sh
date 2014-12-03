# private use ;-) not met to be run by someone else, somewhere else
# super slow. will optimize and polish, sorry for cats...;-)

R="../../ainthek.github.io/plato-reports"
build_reports(){

	pushd src >/dev/null	
	plato -r -d $R/reports/dojo 				dojo
	# this one is TS not compilable on OSX with latest tsc
	#plato -r -d $R/reports/dojo2 -l  sitepen-jshintrc/.jshintrc 	dojo2-core
	plato -r -d $R/reports/plato 				-x plato/node_modules/ plato
	plato -r -d $R/reports/async 				-x async/node_modules/ async
	plato -r -d $R/reports/request 				-x request/node_modules/ request
	plato -r -d $R/reports/poly 				-x poly/node_modules/ poly
	plato -r -d $R/reports/msgs 				-x msgs/node_modules/ msgs
	plato -r -d $R/reports/ampersand 			-x ampersand/node_modules/ ampersand
	plato -r -d $R/reports/ampersand-state 		-x ampersand-state/node_modules/ ampersand-state
	plato -r -d $R/reports/ampersand-view 		-x ampersand-view/node_modules/ ampersand-view
	plato -r -d $R/reports/JSONStream 			-x JSONStream/node_modules/ node_modules/JSONStream
	plato -r -d $R/reports/asn1 				-x asn1/node_modules/ node_modules/asn1
	plato -r -d $R/reports/backbone 			-x backbone/node_modules/ node_modules/backbone
	plato -r -d $R/reports/boom 				-x boom/node_modules/ node_modules/boom
	plato -r -d $R/reports/byline 				-x byline/node_modules/ node_modules/byline
	plato -r -d $R/reports/cli 					-x cli/node_modules/ node_modules/cli
	plato -r -d $R/reports/cli-color 			-x cli-color/node_modules/ node_modules/cli-color
	plato -r -d $R/reports/combined-stream 		-x combined-stream/node_modules/ node_modules/combined-stream
	plato -r -d $R/reports/contextify 			-x contextify/node_modules/ node_modules/contextify
	plato -r -d $R/reports/core-util-is 		-x core-util-is/node_modules/ node_modules/core-util-is
	plato -r -d $R/reports/cryptiles 			-x cryptiles/node_modules/ node_modules/cryptiles
	plato -r -d $R/reports/cssom 				-x cssom/node_modules/ node_modules/cssom
	plato -r -d $R/reports/cssstyle 			-x cssstyle/node_modules/ node_modules/cssstyle
	plato -r -d $R/reports/ctype 				-x ctype/node_modules/ node_modules/ctype
	plato -r -d $R/reports/delayed-stream 		-x delayed-stream/node_modules/ node_modules/delayed-stream
	plato -r -d $R/reports/difflib 				-x difflib/node_modules/ node_modules/difflib
	plato -r -d $R/reports/domhandler 			-x domhandler/node_modules/ node_modules/domhandler
	plato -r -d $R/reports/domutils 			-x domutils/node_modules/ node_modules/domutils
	plato -r -d $R/reports/dreamopt 			-x dreamopt/node_modules/ node_modules/dreamopt
	plato -r -d $R/reports/entities 			-x entities/node_modules/ node_modules/entities
	plato -r -d $R/reports/es5-ext 				-x es5-ext/node_modules/ node_modules/es5-ext
	plato -r -d $R/reports/form-data 			-x form-data/node_modules/ node_modules/form-data
	plato -r -d $R/reports/glob 				-x glob/node_modules/ node_modules/glob
	plato -r -d $R/reports/graceful-fs 			-x graceful-fs/node_modules/ node_modules/graceful-fs
	plato -r -d $R/reports/hawk 				-x hawk/node_modules/ node_modules/hawk
	plato -r -d $R/reports/heap 				-x heap/node_modules/ node_modules/heap
	plato -r -d $R/reports/hoek 				-x hoek/node_modules/ node_modules/hoek
	plato -r -d $R/reports/htmlparser2 			-x htmlparser2/node_modules/ node_modules/htmlparser2
	plato -r -d $R/reports/http-signature 		-x http-signature/node_modules/ node_modules/http-signature
	plato -r -d $R/reports/isarray 				-x isarray/node_modules/ node_modules/isarray
	plato -r -d $R/reports/jsdom 				-x jsdom/node_modules/ node_modules/jsdom
	plato -r -d $R/reports/jshint 				-x jshint/node_modules/ node_modules/jshint
	plato -r -d $R/reports/json 				-x json/node_modules/ node_modules/json
	plato -r -d $R/reports/json-diff 			-x json-diff/node_modules/ node_modules/json-diff
	plato -r -d $R/reports/json-diff-patch 		-x json-diff-patch/node_modules/ node_modules/json-diff-patch
	plato -r -d $R/reports/jsonparse 			-x jsonparse/node_modules/ node_modules/jsonparse
	plato -r -d $R/reports/lodash 				-x lodash/node_modules/ node_modules/lodash
	plato -r -d $R/reports/lru-cache 			-x lru-cache/node_modules/ node_modules/lru-cache
	plato -r -d $R/reports/marked 				-x marked/node_modules/ node_modules/marked
	plato -r -d $R/reports/mime 				-x mime/node_modules/ node_modules/mime
	plato -r -d $R/reports/minimatch 			-x minimatch/node_modules/ node_modules/minimatch
	plato -r -d $R/reports/node-uuid 			-x node-uuid/node_modules/ node_modules/node-uuid
	plato -r -d $R/reports/nwmatcher 			-x nwmatcher/node_modules/ node_modules/nwmatcher
	plato -r -d $R/reports/open 				-x open/node_modules/ node_modules/open
	plato -r -d $R/reports/printf 				-x printf/node_modules/ node_modules/printf
	plato -r -d $R/reports/readable-stream 		-x readable-stream/node_modules/ node_modules/readable-stream
	plato -r -d $R/reports/sax 					-x sax/node_modules/ node_modules/sax
	plato -r -d $R/reports/selenium-webdriver 	-x selenium-webdriver/node_modules/ node_modules/selenium-webdriver
	plato -r -d $R/reports/sigmund 				-x sigmund/node_modules/ node_modules/sigmund
	plato -r -d $R/reports/sntp 				-x sntp/node_modules/ node_modules/sntp
	plato -r -d $R/reports/through 				-x through/node_modules/ node_modules/through
	plato -r -d $R/reports/tough-cookie 		-x tough-cookie/node_modules/ node_modules/tough-cookie
	plato -r -d $R/reports/underscore 			-x underscore/node_modules/ node_modules/underscore
	plato -r -d $R/reports/when 				-x when/node_modules/ node_modules/when
	plato -r -d $R/reports/wire 				-x wire/node_modules/ node_modules/wire
	plato -r -d $R/reports/wordwrap 			-x wordwrap/node_modules/ node_modules/wordwrap
	plato -r -d $R/reports/xml2js 				-x xml2js/node_modules/ node_modules/xml2js
	plato -r -d $R/reports/xmldom 				-x xmldom/node_modules/ node_modules/xmldom
	plato -r -d $R/reports/xpath 				-x xpath/node_modules/ node_modules/xpath
		
	popd >/dev/null
}

build_stats_md(){
	pushd src >/dev/null	

	echo "|package|downloads|avg.maint|total.sloc|version|description|"
	echo "|-------|--------:|--------:|---------:|-------|-----------|"
	ls -1 -d node_modules/* |\
	#head -n 2|\
	while read module_path
	do
		module_name=$(basename $module_path)
		rep=$(cat "$R/reports/$module_name/report.json" | jsontool -d "|" -a summary.average.maintainability summary.total.sloc)
		rep_m=$(cut -d"|" -f1 <<< "$rep") #TODO: split
		rep_s=$(cut -d"|" -f2 <<< "$rep")
		#desc=$(npm view $module_name description)
		version_desc=$(cat $module_path/package.json | jsontool -d "|" -a version description | tr "\n" " ")
		popularity=$(npm_stats $module_name) # could be faster with xargs
		echo "| [$module_name]($(link_npm $module_name))| $popularity | [$rep_m]($(link_report $module_name))| [$rep_s]($(link_report $module_name))| $version_desc |" |\
		md-escape-emphasis
		echo "Done with $module_name" 1>&2
	done | sort -t"|" -k3,3nr

	popd >/dev/null
}

build_readme_md(){
echo "

# plato-reports

just playground for plato js, reports for selected node modules and libraries

interesting to compare download popularity and reports statistics

HOWEVER whole this is WRONG, since I'm comparing node_modules JS files (often merged, minified).
Will download sources from github for each project soon and analyze those.

"	

build_stats_md

echo "

Also some other frameworks analyzed:

- [dojo](http://ainthek.github.io/plato-reports/reports/dojo/index.html)

"
}

link_report(){
	echo "http://ainthek.github.io/plato-reports/reports/$1/index.html"
}
link_npm(){
	echo "https://www.npmjs.org/package/$1"
}
npm_stats(){
	#TODO: super naive, please use their API if available or popper parser	
	lm=$(
		curl -s https://www.npmjs.org/package/$1 |\
		grep "last month" |\
		xs-sed "s;\(<[^>]*>\);;g ; s/\ downloads.*// ; s/ \+//g"
	)	
	echo "$lm"
}

build_reports

build_readme_md > README.md


