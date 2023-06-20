<<<<<<< HEAD
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
=======
# Personal ZSHRC 2.0
# If somehow this gets all effed there is a .bak of the 
# OG zshrc that is generated from the new-user-install file


function _zMain() {
    local ZD ZALIAS ZENV ZFUNK ZPATH ZPROMPT ZAPT
    #The zdot directory of config files
    ZDOTDIR="${HOME}/.config/zsh/"
    local -r ZD="${ZDOTDIR}"

    # My Aliases
    local -r ZALIAS="${ZD}/zAlias"

    # Z-shell Environment Variables
    local -r ZENV="${ZD}/zEnv"

    # Personal functions
    local -r ZFUNK="${ZD}/zFunk"

    # Helpful Paths
    local -r ZPATH="${ZD}/zPath"

    # My Prompt Config
    local -r ZPROMPT="${ZD}/zPrompt"
    
    # Shiz I pulled from the apt package Manager
    ZAPT="${ZD}/zApt"

    _ZCONFIG() {
        local ERRMSG TIMESTAMP ERRLOG

        ERRLOG=${ZD}/.errlog
        
        for ZSHCONF in [ $ZALIAS $ZENV $ZPATH $ZPROMPT $ZAPT ]; do
            if [[ -f $ZSHCONF ]]; then
                source $ZSHCONF
            else
                ERRMSG="Errant File: "
                TIMESTAMP=$(date '+%Y-%m-%d %H:M:%S')
                ZERR=' '
                if [[ -v $ZERR ]]; then
                    printf "You are missing %s" "$ZSHCONF"
                    printf "Either re-pull from the original repo or read"
                    printf "comments in rc file to remove the requirement"
                else    
                    printf "\033[1;31merr\033[0m\n"
                    printf "\n[%s]\n%s\t%s\n\n" "$TIMESTAMP" "$ERRMSG" "$ZSHCONF" >> $ERRLOG
                fi
            fi
        done
    }
    _ZCONFIG
}

_zMain
>>>>>>> 29b512a45f4e92de7c50dcc65cb425e365048bd6
