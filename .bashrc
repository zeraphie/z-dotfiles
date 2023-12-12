export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_NDK=$HOME/android-ndk
export PATH=$PATH:$ANDROID_NDK
export PATH=$PATH:$ANDROID_SDK/platform-tools

# Get everything in the lib files (dependencies)
for file in ~/z-dotfiles/.bash/lib/*; do
    if [[ $file != *"DISABLE"* ]]; then
        source "$file"
    fi
done

# Get everything in the functions directory
for file in ~/z-dotfiles/.bash/functions/*; do
    if [[ $file != *"DISABLE"* ]]; then
        source "$file"
    fi
done

# Get all the aliases
source ~/z-dotfiles/.bash/aliases.sh

# Get all the work specifics
source ~/z-dotfiles/.bash/work/load.sh

# Get any other custom settings
if [ -f ~/z-dotfiles/.bashrc_local ]; then
    source ~/z-dotfiles/.bashrc_local
fi
