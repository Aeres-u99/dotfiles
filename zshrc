# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/akuma/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf-tab zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cat=bat
export MANPAGER="less"
source ~/bin/goto
unzip_d () {
    zipfile="$1"
    zipdir=${1%.zip}
    unzip -d "$zipdir" "$zipfile"
}
pewlog () {
    logfile="$1"
tail -f $1 | bat --paging=never -l log
}
export LC_ALL=en_US.UTF-8   
export PATH=$PATH:/home/akuma/bin:/home/akuma/appimages:/home/akuma/.cargo/bin:/home/akuma/.local/bin:/home/akuma/bin/v/


# fzf things
alias fzx='fzf --height 30% --layout reverse --info inline --preview  "bat --style=numbers --color=always --line-range :500 {}" --preview-window=right:60:wrap'
alias fzm='fzf --height 40% --layout reverse --info inline --preview  "glow {}" --preview-window=right:60:wrap'
#export FZF_DEFAULT_OPTS=''
export FZF_COMPLETION_TRIGGER=',,' 
alias searx="grep -A 5 -B 5 --line-buffered --color=never -r \"\" * | fzf"
alias fzr='fzf --height 40% --layout reverse --info inline --preview  "grep -ir {}" --preview-window=right:60:wrap'
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}
export BW_SESSION="X7RuIe3lwoajHmAyh86VV+QrW0JbDDCMxqv/Mizv4AME8SJZyc46bDb4u7EL+vEemOiJA9i+TQBi4FS3GZOd+g=="
alias music='tmux new-session "tmux source-file ~/.ncmpcpp/tmux_session"'
alias cpb="xclip -selection c"
alias tpb="ncat termbin.com 9999"
alias tpc='tpb | sed  "s/https:\/\//https:\/\/l\./" '
alias gpb="xclip -selection c -o"
alias dim="stty size"
alias pyhack="source /home/akuma/pythonPackages/bin/activate"
alias cp='xcpx -gR'
alias mv='xmvx -g'
alias ssh='TERM=xterm-color ssh'
alias batter='bat --paging=never -l log'
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }
export PATH="/home/akuma/ctf/hackingtools/ghidra_10.1.2_PUBLIC_20220125/ghidra_10.1.2_PUBLIC/:/home/akuma/.pyenv/bin:/home/akuma/.gem/ruby/2.7.0/bin:/home/akuma/.roswell/bin/:/opt/terraform13:$PATH"
export XDG_SESSION_TYPE=x11
export GOPATH=$HOME/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:$HOME/gocode
export PATH=$PATH:$GOPATH/bin:/home/akuma/node_modules/.bin:/home/akuma/.gem/ruby/3.0.0/bin
alias filterup="blugon --setcurrent="+600""
alias filterdown="blugon --setcurrent="-600""
alias vush="vagrant up && vagrant ssh"
alias gofuckyourself="sudo poweroff"
export FZF_TMUX_OPTS="-p"
export FZF_CTRL_R_OPTS="--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
alias nc='rlwrap nc'
export LARIZA_HOME_URI=file:////home/akuma/.config/lariza/Prismatic-Night/index.html
alias setres="xrandr --output HDMI-1-0 --mode 1920x1080 --same-as eDP-1"
alias xcr="cat README.md"
alias amvp="mpv --geometry=422x240"
alias _xscm='echo "" > ~/tmp/scratchpad.scheme; nvim ~/tmp/scratchpad.scheme'
alias binparse_='grep -v "^[_%.=;\[/ G]"'
alias _commit='git commit -m "$(fortune -s)";git push'
alias reptyr='echo 0 | sudo tee -a /proc/sys/kernel/yama/ptrace_scope; reptyr'
zlibd() (printf "\x1f\x8b\x08\x00\x00\x00\x00\x00" | cat - "$@" | gzip -dc)
export EDITOR=$(which nvim)  
alias plank='XDG_SESSION_TYPE=x11 plank'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias kubectl="minikube kubectl --"
cleandocker() {
    clear
    echo "Clearing All of the Images"
    for images in $(docker images | grep -v "$(docker images | tac | tail -n1)" | awk -F" " '{print $3}')
    do
    docker rmi -f $images
    done
}
alias k='kubectl'
alias ka='kubectl apply'
alias kg='kubectl get'
alias kd='kubectl diff'
alias mk='minikube'
alias mks='minikube start'
alias zathura='readx_'
#export TUTORIAL_HOME="$(pwd)/kubernetes-tutorial"
#export MINIKUBE_HOME=$TUTORIAL_HOME;
#export PATH=$MINIKUBE_HOME/bin:$PATH
#export KUBECONFIG=$MINIKUBE_HOME/.kube/config
#export KUBE_EDITOR="nvim"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/terraform13/terraform terraform
