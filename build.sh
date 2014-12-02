pushd src
(
# projects	
echo "dojo"
echo "plato"	
# node modules
ls -1 -d node_modules/*
) |\
while read module_path; do
	module_name=$(basename $module_path)
	plato -r -d "../reports/$module_name" -x "$module_name/node_modules/" "$module_path"
done	

popd
