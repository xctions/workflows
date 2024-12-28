# a="abc/a"
# b="/abc/a"

# if [[ "$a" == "/"* ]]; then
#     echo "a starts with /"
# else
#     echo "a not starts with /"
# fi

# if [[ "$b" == "/"* ]]; then
#     echo "b starts with /"
# else
#     echo "b not starts with /"
# fi


###
if [[ -e "a" ]]; then
    echo "file exists"
fi

if [[ -e "b" ]]; then
    echo "dir exists"
fi

if [[ ! -e "c" ]]; then
    echo "dir c doesn't exist"
fi
