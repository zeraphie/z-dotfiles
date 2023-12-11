################################################################################
# Load work specifics                                                          #
################################################################################
for file in ~/z-dotfiles/.bash/work/*/*; do
    # Don't include this file and get only bash files
    if [[ $file != *"load"* ]] && [[ $file != *"DISABLE"* ]] && [[ $file == *.sh ]]; then
        source "$file"
    fi
done