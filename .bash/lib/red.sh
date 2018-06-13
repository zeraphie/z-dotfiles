# Echo with red text
red(){
    echo -en "\e[31m"
    echo "$@"
    echo -en "\e[0m"
}