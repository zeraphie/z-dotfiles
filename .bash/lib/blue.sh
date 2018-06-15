# Echo with blue text
blue(){
    echo -en "\e[1;34m"
    echo "$@"
    echo -en "\e[0m"
}