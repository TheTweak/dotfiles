export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/Users/sorokinevgeny/go/bin:$PATH"
source ~/.upwork.aws.sh
PROMPT='%F{blue}%1~%f
%(?.🐸.🐙) %(!.#.>) '

export PATH="$HOME/.poetry/bin:$PATH"
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

if [ "$TERM_PROGRAM" = "Terminus-Sublime" ]; then
    bindkey "\e[1;3C" forward-word
    bindkey "\e[1;3D" backward-word
fi
