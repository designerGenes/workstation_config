export ZSH="$HOME/.oh-my-zsh"
export ZPLUG_HOME="$HOME/.zplug"
source $ZPLUG_HOME/init.zsh && echo "Initialized Zplug"
source $ZSH/oh-my-zsh.sh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "esc/conda-zsh-completion"

zplug "romkatv/powerlevel10k", as:theme

if ! zplug check --verbose; then
	zplug install
fi

zplug load

# Ensure Powerlevel10k theme configuration is
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Custom Aliases
alias gs='git status'
export ZSHRC="/users/jadennation/.zshrc"
alias rezsh='source "$ZSHRC" && echo reloaded ZSH' 
alias vimZ='vim "$ZSHRC"'
alias vimVim="vim ~/.vimrc"
export TERM=xterm-256color
