#! /usr/bin/env bash
rm -f props.sed
sed -e 's!\([^=]*\)=\(.*\)!s:<\1>:\2:g!' server.properties > props.sed
find . -type f -not -iwholename './.git*' -not -iwholename './props.sed'  -print0 | xargs -0 sed  -f props.sed -i '' 
rm -f props.sed

