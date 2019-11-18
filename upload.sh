#!/bin/sh
git rm -r  $(git ls-files --deleted)
git commit -m "initialize"
git push
ls | grep -v -E "^upload.sh" | xargs rm -r
cp -r ~/blogFile/blog/public/* .
ls | grep -v -E "^upload.sh" | xargs git add
git commit -m $(date +%Y%m%d%H%M)
git push