## ZSHRC

## Source Files
source /root/.config/zsh/zAlias
source /root/.config/zsh/zEnv
source /root/.config/zsh/zFunk
source /root/.config/zsh/zPath
source /root/.config/zsh/zPrompt
source /root/.config/zsh/zColor
##################################################
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
##################################################
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
##################################################
if [ -f /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
  source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi
##################################################
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
##################################################
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
##################################################
# Greeting
echo -e "${BIGreen}######################${BYellow} Welcome ${BRed}######################"
echo -e "${BRed} ######################${BIGreen} ${USER} ${BYellow}#######################"
echo -e "${BYellow}###############${BRed} to WSL-Parrot Security ${BIGreen}##############${Color_off}"
echo ""
echo ""
sleep 2