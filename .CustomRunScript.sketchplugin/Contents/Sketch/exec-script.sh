#!/bin/bash

scriptContentFile=$1

cd ~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/.CustomRunScript.sketchplugin/Contents/Sketch
cp script-default.js script.js

lines=`expr $(wc -l < script.js) - 1`
sed -i "" "$lines r $scriptContentFile" script.js

echo "Running Script ============> `date`"
/Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool run ../../../.CustomRunScript.sketchplugin custom-run-script
echo ""

