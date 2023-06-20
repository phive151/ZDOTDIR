#!/usr/bin/env bash
 set_zsh_config_directory() {
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
   # Get the absolute path of the specified directory
  local zsh_config_dir="$(realpath -s "$1")"
   # Check if the specified directory is under the home directory
  if [[ "${zsh_config_dir}" != "${HOME}/"* ]]; then
    echo "Error: Invalid directory specified. Please specify a directory under your home directory." >&2
    exit 1
  fi
   # Create the specified directory if it does not exist
  if [ ! -d "${zsh_config_dir}" ]; then
    if ! mkdir -p "${zsh_config_dir}"; then
      echo "Error: Failed to create directory ${zsh_config_dir}." >&2
      exit 1
    fi
  fi
   # Backup the existing .zshrc file and create a symlink to the new .zshrc file
  backup_and_symlink_zshrc_file "${zsh_config_dir}/.zshrc"
  echo "ZSH configuration directory set to ${zsh_config_dir}."
}
backup_and_symlink_zshrc_file() {
  local zshrc_file="$1"
  local timestamp="$(date +%s)"
  local backup_file="${zshrc_file}.bak.${timestamp}"
   # Check if the .zshrc file already exists
  if [ -e "${zshrc_file}" ]; then
    # Backup the existing .zshrc file
    mv -n "${zshrc_file}" "${backup_file}"
  fi
   # Create a symlink to the new .zshrc file
  ln -s "${backup_file}" "${zshrc_file}"
   if [ ! -L "${zshrc_file}" ]; then
    echo "Error: Failed to create symlink to ${zshrc_file}." >&2
    exit 1
  fi
}
 # Call the set_zsh_config_directory function with the specified directory
set_zsh_config_directory "${HOME}/.config/zsh"