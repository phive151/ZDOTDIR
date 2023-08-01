#!/usr/bin/env bash
 
check_depends() {
     # Check if the script is running in Zsh shell
  if [ ! -z "$ZSH_VERSION" ]; then
    echo "Error: This script requires Zsh shell to run." >&2
    exit 1
  fi
   # Check if realpath is available
  if ! command -v realpath >/dev/null 2>&1; then
    echo "Error: realpath command not found. Please install it and try again." >&2
    exit 1
  fi
}
set_zdot_directory() {
  # Get the absolute path of the specified directory
  ZDOTDIR="$(realpath -s "$1")"
  # Check if the specified directory is under the home directory
  if [[ "${ZDOTDIR}" != "${HOME}/"* ]]; then
    echo "Error: Invalid directory specified. Please specify a directory under your home directory." >&2
    exit 1
  fi
    # Create the specified directory if it does not exist
  if [ ! -d "${ZDOTDIR}" ]; then
    if ! mkdir -p "${ZDOTDIR}"; then
      echo "Error: Failed to create directory ${ZDOTDIR}." >&2
      exit 1
    fi
  fi
  # Backup the existing .zshrc file and create a symlink to the new .zshrc file
printf "ZSH configuration directory set to %s." "$ZDOTDIR"
}
backup_and_symlink_zshrc_config_file() {
  local -r zshrc_config_file="$1"
  local -r timestamp="$(date +%s)"
  local -r backup_file="./backups/${timestamp}.zshrc.bak"
   # Check if the .zshrc file already exists
  if [ -e "${zshrc_config_file}" ]; then
    # Backup the existing .zshrc file
    cp "$zshrc_config_file" "$backup_file"
  fi
   # Create a symlink to the new .zshrc file
    home_dot_zshrc="${HOME}/.zshrc"
    ln -srf "${zshrc_config_file}" "${home_dot_zshrc}"
  if [ ! -L "${home_dot_zshrc}" ]; then
    echo "Error: Failed to create symlink to ${home_dot_zshrc}." >&2
    exit 1
  fi
}
 # Call the set_ZDOTDIRectory function with the specified directory
check_depends
set_zdot_directory ZDOTDIR='$(realpath -s "$1")'
backup_and_symlink_zshrc_config_file "${ZDOTDIR}/.zshrc"

