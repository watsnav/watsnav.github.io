net start postgresql-x64-12
echo $LASTEXITCODE
if($LASTEXITCODE) {
    D:\prjs\www\watsnav.github.io\genquote.exe
    git add D:\prjs\www\watsnav.github.io\
    git commit -m "update qotd"
    git push
}