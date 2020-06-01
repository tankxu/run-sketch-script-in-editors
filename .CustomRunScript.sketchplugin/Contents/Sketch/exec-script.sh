#!/bin/bash

scriptContentFile=$1

cd ~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/.CustomRunScript.sketchplugin/Contents/Sketch
cp script-default.js script.js
sed -i -e "19 r $scriptContentFile" script.js

echo "Running Script ============> `date`"
/Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool run ../../../.CustomRunScript.sketchplugin custom-run-script
echo ""

