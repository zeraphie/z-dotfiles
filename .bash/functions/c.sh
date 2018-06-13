# To use instead of cd!
c() {
    # cd to the given directory
    if [[ "$@" != "." ]]; then
        # If "." don't do anything, so that "cd -" still works
        # Don't output the path as I'm going to anyway (done by "cd -" and cdspell)
        cd "$@" >/dev/null || return
    fi

    # Output the path
    echo
    underline $PWD
    echo

    # List the directory contents
    ls -hFG
}