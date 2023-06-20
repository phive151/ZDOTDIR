# Set zdot directory of config files
ZDOTDIR=$(dirname "$(realpath "$0")")
 # Define file paths
ZALIAS="${ZDOTDIR}/zAlias"
ZENV="${ZDOTDIR}/zEnv"
ZPATH="${ZDOTDIR}/zPath"
ZPROMPT="${ZDOTDIR}/zPrompt"
ZAPT="${ZDOTDIR}/zApt"
 # Check if file exists and source it
source_file() {
  local file="$1"
  if [ -f "$file" ]; then
    source "$file"
  else
    printf "Error: %s file not found\n" "$file"
    printf "Either re-pull from the original repo or read comments in rc file to remove the requirement\n"
  fi
}
 # Source all config files
source_configs() {
  local errlog="${ZDOTDIR}/.errlog"
  local files=("$ZALIAS" "$ZENV" "$ZPATH" "$ZPROMPT" "$ZAPT")
  for file in "${files[@]}"; do
    source_file "$file" || {
      local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
      printf "\n[%s]\nError: Errant File: %s\n\n" "$timestamp" "$file" >> "$errlog"
    }
  done
}
 # Main function
_zMain() {
  source_configs
}
 _zMain