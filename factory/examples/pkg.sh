

git add . --all ; git commit -a -m" $1 "  ; git push

cd ../charts && ./pkg.sh "$1" && cd -
