#!/bin/zsh

getcloneorfetch(){
  if test -d $2; then
    git fetch $2
  else
    git clone $1 $2
  fi
}
echo "cloning repos"
# zsh-syntax-highlighting
getcloneorfetch https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# autoupdate-zsh-plugin
getcloneorfetch https://github.com/TamCore/autoupdate-oh-my-zsh-plugins ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoupdate

# zsh-autoswitch-virtualenv
getcloneorfetch https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoswitch_virtualenv

# zsh-vi-mode
getcloneorfetch https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode

# fzf-tab
getcloneorfetch https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# zsh-you-should-use
getcloneorfetch https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use

# nvm-zsh
getcloneorfetch https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm
