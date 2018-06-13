# 'git' with no parameters loads interactive REPL
git() {
    if [ $# -gt 0 ]; then
        command git "$@"
    else
        command git status &&
        command git repl
    fi
}