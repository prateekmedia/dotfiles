#Prompt
PS1="%F{green}%B%~/%b%f "

# Source
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Aliases
alias ls='ls --color=auto'
alias cls='clear'
alias py='python3'
alias pip='pip3'
alias ytdl='youtube-dl'
alias docker='sudo docker'
alias open='xdg-open'
alias sudo='sudo -p "$(printf "\033[1;31mPassword: \033[0;0m" )"'
alias rm='printf "\033[1;31m" && rm -rIv'
alias cp='printf "\033[1;32m" && cp -rv'
alias mv='printf "\033[1;34m" && mv -v'
alias mkdir='printf "\033[1;33m" && mkdir -v'
alias rmdir='printf "\033[1;35m" && rmdir -v'


# History
HISTSIZE=500
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

#binds
bindkey "^[[3~" delete-char
bindkey "^A" beginning-of-line
bindkey "^Q" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Exports
export QT_QPA_PLATFORMTHEME=gtk2
export PATH="$HOME/.local/bin:$PATH"
export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share/applications:/usr/share"

# Flutter sdk
export PATH="$HOME/dev/flutter/bin:$PATH"

#Android studio
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$ANDROID_HOME/cmdline-tools/6.0:$ANDROID_HOME/cmdline-tools/6.0/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
