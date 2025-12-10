# Dotfiles

My personal configuration files for Zsh, Vim/Neovim, Git, and other tools.
Designed to be modular, portable, and easy to install on new machines.

---

## 🐂 Repository Structure

```
~/dotfiles
├── zsh/           # Zsh config, aliases, prompts, startup scripts
│   ├── .zshrc
│   ├── aliases.zsh
│   ├── options.zsh
│   └── facts.zsh  # startup fortune & ASCII art
├── vim/           # Vim config
│   └── .vimrc
├── nvim/          # Neovim config
│   └── .config/nvim/init.lua
├── git/           # Git configuration
│   └── .gitconfig
├── config/        # XDG apps config (Starship, Ghostty, etc.)
└── scripts/       # Optional helper scripts
```

---

## ⚡ Installation

Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink configs into `$HOME`:

```bash
cd ~/dotfiles
stow zsh
stow vim
stow nvim
stow git
stow config
```

Or manually symlink:

```bash
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/config/nvim ~/.config/nvim
```

---

## 💡 Features

* **Zsh**: modular `.zshrc`, aliases, options, and fun startup ASCII art with fortune.
* **Git**: aliases, color, and helper functions.
* **Vim/Neovim**: custom settings for coding and navigation.
* **XDG-compliant**: configs stored in `~/.config` when supported.
* **Portable & version-controlled**: easy to deploy on new machines.

---

## 📌 Notes

* Keep your personal info (e.g., Git name/email) in `~/.gitconfig.local` to avoid exposing it publicly.
* Requires optional tools for full experience:

  * `fortune` (for random quotes/facts)
  * `figlet` (for ASCII art)
  * `cowsay` (for fun startup messages)
* Adjust scripts, prompts, and aliases to your workflow.

---

## 🔗 References

* [GNU Stow](https://www.gnu.org/software/stow/)
* [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
* [Oh-My-Zsh](https://ohmyz.sh/) (optional inspiration)

