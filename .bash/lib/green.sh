# Echo with green text
green(){
    echo -en "\e[32m"
    echo "$@"
    echo -en "\e[0m"
}