# clean up last version
rm -rf __deployme
mkdir __deployme

# build
sh scripts/build.sh

# minify JS
uglifyjs bundle.js -o __deployme/bundle.js
#minify CSS
minify bundle.css > __deployme/bundle.css
# copy HTML and images
cp index.html __deployme/index.html
cp -r images/ __deployme/images/

# done
date; echo;