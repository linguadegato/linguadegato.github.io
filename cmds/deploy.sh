git checkout master
cp -r build/* .
git add .
git ci -m "Deploy"
git push

git checkout source
