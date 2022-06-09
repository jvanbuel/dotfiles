# If you come from bash you might have to change your $PATH.
# Path to your oh-my-zsh installation.
export ZSH="/Users/jvanbuel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mh"
# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    aws
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
    vi-mode
        )
# completion
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
    compinit
done
compinit -C
ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

 # enable vim
bindkey -v
bindkey 'TAB-H' run-help

export PATH=/usr/local/bin/aws_completer:$PATH
export GOPATH=/Users/jvanbuel/go

source ~/.dircolors
export PATH=/usr/local/bin/aws_completer:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Users/jvanbuel/go/bin

# SDKman setup
export SDKMAN_DIR="/Users/jvanbuel/.sdkman"
[[ -s "/Users/jvanbuel/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jvanbuel/.sdkman/bin/sdkman-init.sh"

export PATH=/Users/jvanbuel/.local/bin:$PATH

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

source ~/.alias

# Add pyenv shims to path
eval "$(pyenv init - --path)"

# Add asdf shims to path
. /usr/local/opt/asdf/libexec/asdf.sh

# Add poetry to path
export PATH="$HOME/.poetry/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jvanbuel/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)