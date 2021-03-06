# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="juanghurtado"
ZSH_THEME="karthik-simple"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitfast brew chruby autojump tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# press up/down to search history (for it to work on Linux)
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '\eOA' up-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

# Loads all my bash functions
for f in ~/.functions.d/*.bash; do
  . $f;
done

# Adds Homebrew bins to PATH
if [[ -f /usr/local/bin/brew ]]; then
  # brew doctor says let'em load first!
  export PATH=/usr/local/bin:/usr/local/sbin:$PATH
  BREW_HOME=`brew --prefix`
  # tell brew cask to use /Applications
  export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

# Adds NPM bins to PATH
export PATH=$PATH:/usr/local/share/npm/bin

# Load aliases
[[ -f ~/.aliases ]] && . ~/.aliases

# Default editor is vi
export VISUAL=vi
export EDITOR=$VISUAL

#export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export JAVA_HOME=/Library/Java/Home/
export AWS_RDS_HOME=~/work/RDSCli
export AWS_CREDENTIAL_FILE=$AWS_RDS_HOME/credential-file
export EC2_REGION=ap-southeast-1

export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# Add my bins to PATH
export PATH=~/bin:$PATH
export LC_CTYPE=en_US.UTF-8

eval `/usr/libexec/path_helper -s`

#export CC=/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/gcc-4.2
#export CXX=/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/g++-4.2
#export CPP=/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/cpp-4.2

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

