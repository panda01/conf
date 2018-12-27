HISTSIZE=5000
HISTFILESIZE=10000

shopt -s histappend

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
