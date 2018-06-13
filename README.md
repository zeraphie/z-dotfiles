# zDotfiles
These are a condensed version of my dotfiles for use on a MAC.

---

## System Preferences

In my **System Preferences** I've set the following:

- Background: #1D1F20
- Text Colour: #EFEFEF
- Selection: #9FB8D8
- Cursor: Vertical Bar
- Blink Cursor: Checked

---

## Oh My Zsh

I've used https://github.com/robbyrussell/oh-my-zsh to edit the look of the shell and chosen the `avit` theme.

I've added a few things to the `~/.zshrc` file which are as follows:

```bash
# Some commands were missing - Also ran `brew install nvm`
export PATH=$HOME/bin:/usr/local/sbin:/usr/lib/google-cloud-sdk/bin:$PATH

# Completion - Also ran `brew install bash-completion`
autoload bashcompinit
bashcompinit

# Bash config files
source ~/.bash_profile
source ~/.bashrc
```

*Note:* Because I'd done several installs before oh my zsh, I needed to also adjust the gcloud files in my `~/.bash_profile` (renamed files to zsh files instead of bash ones)