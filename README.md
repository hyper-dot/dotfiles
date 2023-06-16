# Dotfiles Backup Script

Dotfiles that fits my muscle memory

This script allows you to backup your dotfiles and important configuration files to a specified directory. It creates a backup of various config files such as fish, tmux, alacritty, and vlc, and stores them in a designated backup directory.

## Getting Started

### Prerequisites

- Linux-based operating system (tested on EndeavourOS)
- Git and GitHub configured

### Installation

1.Fork the repo and clone it in your `~/Public/` the repository to your local machine:

```bash
git clone https://github.com/{your-username}/dotfiles.git ~/Public/dotfiles
```

2. Make the backup script executable:

   ```bash
   cd ~/Public/dotfiles/
   chmod +x backup.sh
   ```

### Usage

1. Edit the `backup.sh` script to customize the backup directory and any specific files or directories you want to include.

2. Run the script:

   ```bash
   ./backup.sh
   ```

   The script will create the backup directory if it doesn't exist, copy the specified files and directories into it, commit the changes using Git with the current date as the commit message, and push the changes to a remote repository.

3. If you are using the Fish shell and have Git and GitHub configured, you can use the "bku" alias for convenience. Simply type `bku` in the terminal to automatically execute the backup script.

   Note: Make sure to configure Git and GitHub before using the "bku" alias.

4. Done! Your dotfiles and configuration files are now backed up in the specified directory.

## Customization

You can modify the following variables in the script according to your preferences:

- `BACKUP_DIR`: The directory where your dotfiles will be backed up.
- `TMUX_DIR`: The subdirectory for storing tmux configuration files.

Feel free to customize the script further to include additional files or directories based on your specific needs.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.
