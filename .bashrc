# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_NDK=$HOME/android-ndk
export PATH=$PATH:$ANDROID_NDK
export PATH=$PATH:$ANDROID_SDK/platform-tools

# Get everything in the lib files (dependencies)
for file in ~/.bash/lib/*; do
    source "$file"
done

# Get everything in the functions directory
for file in ~/.bash/functions/*; do
    source "$file"
done

# Get all the aliases
source ~/.bash/aliases.sh

# Get all the work specifics
source ~/.bash/work/load.sh

# Get any other custom settings
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi
