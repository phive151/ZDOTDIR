## ZSHRC
# Greeting
printf '%s' 'Welcome'${USER}'to WSL-Parrot Security'\\n 

## Source Files
for sf in ./z* ; source $sf
if [[ -f ${ZDOTDIR}/zsh-highlight-comp-syntax ]]; then
  source "${ZDORDIR}/zsh-highlight-comp-syntax"
fi
