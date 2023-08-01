## ZSHRC
zdir=$(dirname "$0")

declare -A zfiles=( 
    [zalias]="$zdir/zalias" 
    [zcolor]="$zdir/zcolor" 
    [zenv]="$zdir/zenv" 
    [zfunc]="$zdir/zfunc" 
    [zpath]="$zdir/zpath" 
    [zprompt]="$zdir/zprompt" 
)
function main() {
  for file in $zdir/z*; do
      if [[ -f "$file" ]]; then
          source "$file"
      fi
  done
}
set -x
## Source Files
main

echo "${BIGreen}######################${BYellow} Welcome ${BRed}######################"
echo "${BRed}######################${BIGreen} ${USER} ${BYellow}#######################"
echo "${BYellow}#############${BRed} to WSL (Windows Subsystem) ${BIGreen}############${Color_off}"
echo "${BIBlue}#######################${BRed} ${HOST} ${BIBLUE} LINUX ${BIGreen}#######################${Color_off}"