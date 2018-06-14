################################################################################
# Load work specifics                                                          #
################################################################################
for file in ~/.bash/work/*/*; do
    # Don't include this file and get only bash files
    if [[ $file != *"load"* ]] && [[ $file == *.sh ]]; then
        source "$file"
    fi
done