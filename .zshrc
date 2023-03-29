# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
    # time that oh-my-zsh is loaded.
    ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
    # CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
    COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
    # under VCS as dirty. This makes repository status check for large repositories
        # much, much faster.
        # DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
    # stamp shown in the history command output.
    # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
    # HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git # Useful for showing info about the current repo
    osx # OSX features (finder, spotify, etc)
    colored-man-pages
    zsh-syntax-highlighting
    github
    )

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin::$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
    if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='vim'
    else
        export EDITOR='mvim'
    fi

# Setup For Versioning dotfiles ==============================================
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Aliases =====================================================================

# Nice easy to read graphical git histroy
gloga='git log --graph --abbrev-commit --decorate --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold                yellow)%d%C(reset)'\'' --all'

alias cls='clear'
alias tmux='tmux -2'

# exa support: https://the.exa.website/
if (( $+commands[exa] )); then
    alias ll='exa -la'
    alias ls='exa -l'
fi

# vim w/o my plugins
alias bvim='vim -u ~/.basic.vimrc'

# Source this file for ZSH
    alias ss='source ~/.zshrc'

# Functions ===================================================================

function tmux_attach() {
    tmux a -t workspace || tmux new -s workspace
}

function makebranch () {
    git checkout -b $1 && git branch --set-upstream-to=mainline
}

git_all () {
    find . -name ".git" -maxdepth 2 -type d -execdir git pull \;
}
