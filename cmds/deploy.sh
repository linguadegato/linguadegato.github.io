if git diff-index --quiet HEAD --; then
  git checkout master
  cp -r build/* .
  git add .
  git ci -m "Deploy"
  git push

  git checkout source
else
  echo "You have local changes, please commit it before"
  exit 1
fi
