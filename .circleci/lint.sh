# make sure eslint is installed
if [[ ! -d ./node_modules/eslint ]]; then
	npm install eslint
	npm install --save-dev eslint-config-react-app babel-eslint@9.x eslint@5.x eslint-plugin-flowtype@2.x eslint-plugin-import@2.x eslint-plugin-jsx-a11y@6.x eslint-plugin-react@7.x
fi
for file in $(git diff --name-only --cached | egrep '.js$');
do
	$NODE ./node_modules/eslint/bin/eslint.js $file --max-warnings 0
	# If the result of the previous command is NOT zero
	if [ $? -ne 0 ]; then
	 echo "*** ERROR *** : eslint failed for file: $file, please fix code and recommit"
	 exit 1
	fi
done
