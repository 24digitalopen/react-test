for file in $(find ./src -name *.js);
do
    echo $file
	node ./node_modules/eslint/bin/eslint.js $file
	# If the result of the previous command is NOT zero
	if [ $? -ne 0 ]; then
	 exit 1
	fi
done
