# private use ;-) not met to be run by someone else, somewhere else
# super slow. will optimize and polish, sorry for cats...;-)

from_sources=$(cat <<END
dojo
plato
async
request
poly
msgs
ampersand
ampersand-state
ampersand-view
END)

build_reports(){
	pushd src >/dev/null	

	(
	echo "$from_sources"	
	# node modules except thos built from sources
	ls -1 -d node_modules/* | grep -v -F "$from_sources"
	) |\
	while read module_path
	do
		module_name=$(basename $module_path)
		plato -r -d "../reports/$module_name" -x "$module_name/node_modules/" "$module_path"
	done	
	
	popd >/dev/null
}

build_stats_md(){
	pushd src >/dev/null	

	echo "|package|downloads|avg.maint|total.sloc|version|description|links|"
	echo "|-------|--------:|--------:|---------:|-------|-----------|-----|"
	ls -1 -d node_modules/* |\
	#head -n 10|\
	while read module_path
	do
		module_name=$(basename $module_path)
		rep=$(cat "../reports/$module_name/report.json" | jsontool -d "|" -a summary.average.maintainability summary.total.sloc)
		#desc=$(npm view $module_name description)
		version_desc=$(cat $module_path/package.json | jsontool -d "|" -a version description | tr "\n" " ")
		popularity=$(npm_stats $module_name) # could be faster with xargs
		echo "| $module_name | $popularity | $rep | $version_desc | [report]($(link_report $module_name)), [npm]($(link_npm $module_name)) |" |\
		md-escape-emphasis
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

- [dojo](http://htmlpreview.github.io/?https://github.com/ainthek/plato-reports/blob/master/reports/dojo/index.html)

"
}

link_report(){
	echo "http://htmlpreview.github.io/?https://github.com/ainthek/plato-reports/blob/master/reports/$1/index.html"
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


