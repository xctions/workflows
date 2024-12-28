a="abc/a"
b="/abc/a"

if [[ "$b" == "/"* ]]; then
    echo "starts with /"
else
    echo "not starts with /"
fi