alias k=kubectl

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evanczyzycki/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/evanczyzycki/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evanczyzycki/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/evanczyzycki/google-cloud-sdk/completion.zsh.inc'; fi

# kubebuilder autocompletion
if [ -f /usr/local/share/zsh-completion/bash_completion ]; then
. /usr/local/share/zsh-completion/bash_completion
fi
. <(kubebuilder completion zsh)

# emacs
alias es='emacs --daemon'
alias ec='emacsclient --create-frame'
alias ek='killall emacs'
