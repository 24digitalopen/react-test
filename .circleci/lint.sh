for file in $(find ./src -name *.js);
do
    echo $file
	node ./node_modules/eslint/bin/eslint.js $file
done
