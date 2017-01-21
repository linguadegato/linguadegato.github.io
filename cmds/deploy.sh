if git diff-index --quiet HEAD --; then
  bundle exec middleman build
  git checkout master
  cp -r build/* .
  git add .
  git commit -m "Deploy"
  git push

  git checkout source
else
  echo "You have local changes, please commit it before"
  exit 1
fi
