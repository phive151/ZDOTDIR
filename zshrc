## ZSHRC
declare -A zfiles=( 
    [zalias]="$PWD/zalias" 
    [zcolor]="$PWD/zcolor" 
    [zenv]="$PWD/zenv" 
    [zfunc]="$PWD/zfunc" 
    [zpath]="$PWD/zpath" 
    [zprompt]="$PWD/zprompt" 
)
function main() {
  for file in "${zfiles[@]}"; do
      if [[ -f "$file" ]]; then
          source "$file"
      fi
  done
}

## Source Files


_greeting=$(cat << EOF
echo -e "${BIGreen}######################${BYellow} Welcome ${BRed}######################"
echo -e "${BRed} ######################${BIGreen} ${USER} ${BYellow}#######################"
echo -e "${BYellow}###############${BRed} to WSL (Windows Subsystem) ${BIGreen}##############${Color_off}"
echo -e "${BIBlue}######################${BRed} ${HOSTNAME} ${BIBLUE}LINUX ${BIGreen}######################${Color_off}"
echo ""
sleep 1
EOF
)
main
echo $_greeting