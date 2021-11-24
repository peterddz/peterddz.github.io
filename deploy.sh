#!/bin/sh

set -e

# mini is the name of used theme
cd ..
hugo -D -t mini

cd public
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
msg="$*"
fi
git commit -m "$msg"
git push -u origin main
