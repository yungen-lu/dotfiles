export ZSH="/Users/yungen/.oh-my-zsh"
plugins=(git
         zsh-vi-mode
         fzf-tab
         autoupdate
	       zsh-nvm
         autoswitch_virtualenv
         you-should-use
         zsh-syntax-highlighting
) # zsh-syntax-highlighting must be last

source $ZSH/oh-my-zsh.sh
if [ -f ~/.zsh_alias ]; then
    source ~/.zsh_alias
else
    print "~/.zsh_alias not found."
fi

if [ -f ~/.zsh_exports ]; then
    source ~/.zsh_exports
else
    print "~/.zsh_exports not found."
fi
if [ -f ~/.zsh_customs ]; then
    source ~/.zsh_customs
else
    print "~/.zsh_customs not found."
fi

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
