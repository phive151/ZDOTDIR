# This function sets the ZSH configuration directory
set_zsh_config_dir() {
  # Set a flag to indicate that ZSH has been initialized
  export ZSH_INITIALIZED=1
  # Get the absolute path of the specified directory
  local zsh_config_dir="$(realpath -s "$1")"
  # Check if the specified directory is under the home directory
  if [[ "${zsh_config_dir}" != "${HOME}/"* ]]; then
    echo "Error: Invalid directory specified" >&2
    return 1
  fi
  # Set the path of the .zshrc file
  local zshrc_file="${zsh_config_dir}/.zshrc"
  # Create the specified directory if it does not exist
  if [[ ! -d "${zsh_config_dir}" ]]; then
    mkdir -p "${zsh_config_dir}" || {
      echo "Error: Failed to create directory ${zsh_config_dir}" >&2
      return 1
    }
  fi
  # Backup the existing .zshrc file and create a symlink to the new .zshrc file
  backup_and_symlink_zshrc "${zshrc_file}"
  # Source the new .zshrc file
  source "${zshrc_file}" || {
    echo "Error: Failed to source .zshrc file" >&2
      return 1
  }
  # Create a symlink to the new .zshrc file in the home directory
  ln -sf "${zshrc_file}" "${HOME}/.zshrc" || {
    echo "Error: Failed to create symlink to .zshrc file" >&2
    return 1
  }
}
# Call the set_zsh_config_dir function with the specified directory
set_zsh_config_dir "${HOME}/.config/zsh"