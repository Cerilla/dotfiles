#OH-MY-ZSH SETTINGS
ZSH=/home/lily/.oh-my-zsh
ZSH_THEME="pure"
plugins=(git archlinux)
source $ZSH/oh-my-zsh.sh

# VARIABLE AND STUFFS
export PATH="$PATH:/home/lily/.bin"
export PATH="/home/lily/.composer/vendor/bin:$PATH"
export PATH="/opt/lampp/bin:$PATH"

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export DRUSH_PHP="/opt/lampp/bin/php" 
export EDITOR="subl3"

# ZSH OPTION
setopt hist_ignore_all_dups
setopt append_history
unsetopt beep
bindkey -v

# ALIAS - BASIC
  alias pacman='yaourt'
  alias reload_udev='sudo udevadm control --reload-rules; echo "udev rules reloaded"'
  alias ls='ls --color=auto --group-directories-first'
  alias :q='exit'
  alias vi='vim'
  alias open='xdg-open'
  alias reboot='sudo reboot'
  alias halt='sudo halt'
  alias lampp='sudo /opt/lampp/lampp'

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;36m") \
		LESS_TERMCAP_md=$(printf "\e[1;36m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;34m") \
			man "$@"
}
