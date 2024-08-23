#!/bin/bash
#

jq -r 'keys[]' themes.json | while read i; do
  echo "Installing theme: jsonresume-theme-${i}"
  npm install jsonresume-theme-${i}
  
  echo "Exporting PDF resume with theme: jsonresume-theme-${i}"
  npx resume export Robin-Mordasiewicz-${i}.pdf --theme jsonresume-theme-${i} --format pdf --no-sandbox resume.json
  
  echo "Exporting HTML resume with theme: jsonresume-theme-${i}"
  npx resume export Robin-Mordasiewicz-${i}.html --theme jsonresume-theme-${i} --format html resume.json
done
