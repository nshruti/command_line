# find files recursively and cat them into 1 file
find . -name \*.py -print | xargs cat > allsummary.py