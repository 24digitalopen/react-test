code=0

for file in $(find ./src -name *.js);
do
    echo $file
	node ./node_modules/eslint/bin/eslint.js $file --max-warnings 0
	# If the result of the previous command is NOT zero
	if [ $? -ne 0 ]; then
	 code=1
	fi
done

exit $code
