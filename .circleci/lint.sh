for file in $(git diff --name-only --cached | egrep '.js$');
do
    echo $file
	eslint $file --max-warnings 0
	# If the result of the previous command is NOT zero
	if [ $? -ne 0 ]; then
	 echo "*** ERROR *** : eslint failed for file: $file, please fix code and recommit"
	 exit 1
	fi
done
