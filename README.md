# Dotfiles

My personal configuration files for Zsh, Neovim, Git, Fastfetch, and Obsidian.
Designed to be modular, portable, and easy to install on new machines.

---

## 📁 Repository Structure

```
~/dotfiles
├── zsh/                    # Zsh config with Zinit plugin manager
│   ├── .zshrc             # Main Zsh configuration
│   └── themes/            # Oh-My-Posh theme files
├── nvim/                  # Neovim configuration
│   ├── init.lua           # Main Neovim config
│   └── lua/plugins.lua    # Plugin configuration with lazy.nvim
├── git/                   # Git configuration
│   └── .gitconfig         # Git settings and includes
├── fastfetch/             # System information display
│   └── .config/fastfetch/ # Fastfetch configuration and scripts
└── obsidian-base/         # Obsidian vault with templating
    ├── .gitignore         # Obsidian-specific ignore rules
    └── Templates/         # Templater templates for file creation
```

---

## ⚡ Installation

Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink configs into `$HOME`:

```bash
cd ~/dotfiles
stow zsh
stow nvim
stow git
stow fastfetch
stow obsidian-base
```

Or manually symlink:

```bash
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/fastfetch/.config ~/.config
ln -s ~/dotfiles/obsidian-base ~/Documents/Obsidian
```

---

## 💡 Features

### Zsh
* **Zinit plugin manager** for lightweight plugin loading
* **Oh-My-Posh prompt** with custom themes
* **Auto-suggestions** and syntax highlighting
* **Fastfetch integration** for system information display

### Neovim
* **Lua-based configuration** with modern plugin management
* **Lazy.nvim** for fast plugin loading
* **Catppuccin theme** with consistent color scheme
* **Treesitter** for enhanced syntax highlighting
* **Telescope** for fuzzy finding
* **Alpha dashboard** for startup screen

### Fastfetch
* **System information display** on shell startup
* **Custom quip integration** with dad jokes API
* **JSON-based configuration** for easy customization

### Obsidian
* **Templater integration** for automated file creation
* **Project template** with structured workflow
* **Weekly log templates** for consistent tracking
* **Task and milestone tracking** with Dataview integration

### Git
* **Modern defaults** with main as default branch
* **Color support** enabled
* **Global ignore file** for common patterns

---

## 📦 Dependencies

### Required
* [GNU Stow](https://www.gnu.org/software/stow/) - for installation
* [Zsh](https://www.zsh.org/) - shell
* [Neovim](https://neovim.io/) - text editor
* [Git](https://git-scm.com/) - version control

### Optional (for full experience)
* [Oh-My-Posh](https://ohmyposh.dev/) - prompt theme engine
* [Fastfetch](https://github.com/fastfetch-cli/fastfetch) - system info
* [Obsidian](https://obsidian.md/) - note-taking application
* [Templater](https://github.com/SilentVoid/obsidian-templater) - Obsidian plugin
* [Dataview](https://github.com/blacksmithgu/obsidian-dataview) - Obsidian plugin

---

## 🚀 Quick Start

1. **Clone and install:**
   ```bash
   git clone https://github.com/lizarazukevin/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   stow zsh nvim git fastfetch obsidian-base
   ```

2. **Install Neovim plugins:**
   ```bash
   nvim --headless "+Lazy! sync" +qa
   ```

3. **Set up Obsidian:**
   * Install Templater and Dataview plugins
   * Set vault path to `~/Documents/Obsidian`
   * Copy templates from `obsidian-base/Templates/` to your vault

4. **Create new project (Obsidian):**
   * Use Templater command to run the project template
   * Follow prompts to set up new project structure

---

## 📋 Usage

### Creating New Projects in Obsidian
Use the project template to create new projects with consistent structure:

1. Open command palette in Obsidian
2. Run "Templater: Insert template"
3. Select "project.md" template
4. Follow prompts for project name and details
5. Template automatically creates project folder and file

### Fastfetch Customization
Edit `fastfetch/.config/fastfetch/config.jsonc` to customize system info display.
The quip script fetches dad jokes from an API when online.

### Zsh Customization
Add plugins to `zsh/.zshrc` using Zinit syntax:
```zsh
zinit light plugin-name/plugin
```

### Neovim Plugin Management
Add plugins to `nvim/lua/plugins.lua` in the lazy.nvim setup block.

---

## 📌 Notes

* Keep your personal info (e.g., Git name/email) in `~/.gitconfig.local` to avoid exposing it publicly.
* The Obsidian setup uses a specific folder structure for projects, weekly logs, and seeds.
* Fastfetch configuration includes a custom script that fetches dad jokes when internet is available.
* All configurations are designed to be minimal and fast-loading.

---

## 🔗 References

* [GNU Stow](https://www.gnu.org/software/stow/)
* [Zinit](https://github.com/zdharma-continuum/zinit)
* [Oh-My-Posh](https://ohmyposh.dev/)
* [Lazy.nvim](https://github.com/folke/lazy.nvim)
* [Catppuccin](https://catppuccin.com/)
* [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
* [Obsidian Templater](https://silentvoid13.github.io/Templater/)
* [Obsidian Dataview](https://blacksmithgu.github.io/obsidian-dataview/)

