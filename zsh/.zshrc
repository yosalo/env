# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/salo/.oh-my-zsh

DEFAULT_USER=$USER
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="half-life"
#ZSH_THEME="ys"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
#plugins=(git autojump)
plugins=(
  git
  gitfast
  z
  extract
  cp
  #omz reload
  sublime
  web-search
  sudo
  encode64
  urltools
  zsh-autosuggestions     # 需要自己安装
  zsh-syntax-highlighting # 需要自己安装
)

source $ZSH/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

#Dotnet
alias dr="dotnet run"
alias dre="dotnet restore"
alias dm="dotnet msbuild"
alias dap="dotnet add package"
alias drp="dotnet remove package"
alias nuget="mono /usr/local/bin/nuget.exe"

#alias raccess="dotnet /Users/salo/Work/Project/csharp/uBingo/UBingo.Access/src/UBingo.Access/bin/Debug/netcoreapp2.2/UBingo.Access.dll"
#alias raccount="dotnet /Users/salo/Work/Project/csharp/uBingo/UBingo.Account/src/UBingo.Account/bin/Debug/netcoreapp2.2/UBingo.Account.dll"
#alias rsystem="dotnet /Users/salo/Work/Project/csharp/uBingo/UBingo.System/src/UBingo.System/bin/Debug/netcoreapp2.2/UBingo.System.dll"
#alias rwebapi="dotnet /Users/salo/Work/Project/csharp/uBingo/UBingo.WebApi/src/UBingo.WebApi/bin/Debug/netcoreapp2.2/UBingo.WebApi.dll"

#Gopass
export GPG_TTY=$(tty)

#fzf
#eval "$(fzf --zsh)"
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
#export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'

#vscode
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH

#WorkDir
alias gowork="cd Work/Project/go"
alias corework="cd Work/Project/csharp"
alias ebk="cd /Users/salo/Work/Project/dida/FrontEnd/ebooking"

##GOMODULES
export GO111MODULE=auto

##Homebrew out of auto-update
export HOMEBREW_NO_AUTO_UPDATE=1

alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias grep='grep --color=auto'
alias lc='colorls'

# terminal color
if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

#autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

#export PATH="/usr/local/opt/protobuf@3.7/bin:$PATH"
#export PATH="/Users/$USER/Documents/grpc/protoc@3.5.1/bin:$PATH"

# oh-my-zsh seems to enable this by default, not desired for 
# workflow of controlling terminal title.
DISABLE_AUTO_TITLE="true"

function set_terminal_title() {
  echo -en "\e]2;$@\a"
}

#clear title
alias cleartitle='echo "\033]0;${1}\007\c"'

#go
export PATH="/Users/salo/go/bin:$PATH"

#Kitty
alias icat="kitty +kitten icat"
alias kk="kitty +kitten"
alias kkgrep="kitty +kitten hyperlinked_grep"

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

#export PATH="/usr/local/sbin:$PATH"

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
