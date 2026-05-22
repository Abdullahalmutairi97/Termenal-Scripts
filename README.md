# 🛠️ Abdullah's Terminal Scripts

A collection of shell scripts to make your terminal workflow faster on Linux and WSL2.

## Quick Install

```bash
git clone https://github.com/Abdullahalmutairi97/terminal-scripts.git
cd terminal-scripts
chmod +x install.sh
./install.sh
source ~/.zshrc
```

## Commands

### Git
| Command | Description |
|---------|-------------|
| `gq` | Add, commit, and push current repo |
| `gclone` | Pick any of your GitHub repos and clone it |
| `newrepo` | Create a new GitHub repo and open in VS Code |

### System
| Command | Description |
|---------|-------------|
| `backup` | Zip current folder with timestamp |
| `end` | Go back to home/users folder |
| `killt` | Close the terminal completely |

### Utils
| Command | Description |
|---------|-------------|
| `cs` | Show all available commands |

## Requirements

- `git`
- `gh` (GitHub CLI) — for `gclone` and `newrepo`
- `zsh` + Oh My Zsh
- `code` (VS Code) — for `newrepo`

## Install GitHub CLI (Ubuntu/WSL)

```bash
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update && sudo apt install gh -y
gh auth login
```

## Works On

- Arch Linux / CachyOS
- Ubuntu / WSL2
- Any Linux with zsh or bash

## License

MIT
