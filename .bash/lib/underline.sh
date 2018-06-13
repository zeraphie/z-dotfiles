# Echo with underlined text
underline(){
    echo -en "\033[4;1m"
    echo "$@"
    echo -en "\033[0m"
}