#!/bin/bash

if [[ ! -f ./node_modules/.bin/prettier ]]; then
	npm install prettier
fi

JSFILES=$(git diff --cached --name-only --diff-filter=ACM "*.js" "*.jsx" | sed 's| |\\ |g')
[ -z "$JSFILES" ] && exit 0

echo "$JSFILES" | xargs ./node_modules/.bin/prettier --write
echo "$JSFILES" | xargs git add
