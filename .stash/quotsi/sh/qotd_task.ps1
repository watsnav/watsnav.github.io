net start postgresql-x64-12
pushd
cd D:\prjs\www\watsnav.github.io\
.\genquote.exe
git add .
git commit -m "update qotd"
git push
popd
