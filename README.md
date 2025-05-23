# My Neovim Configuration

This repository contains my personal Neovim configuration, designed for modern development workflows. It's built with [Lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management and focuses on a fast, efficient, and feature-rich editing experience.

---

## ✨ Features

- **Plugin Management:** Powered by [Lazy.nvim](https://github.com/folke/lazy.nvim) for efficient and lazy-loaded plugins.
- **Language Server Protocol (LSP):** Full-featured LSP support via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [Mason.nvim](https://github.com/williamboman/mason.nvim) for intelligent code completion, diagnostics, hover information, and more.
  - Currently configured for: `TypeScript/JavaScript (ts_ls)`, `HTML`, `CSS`, `JSON`, `Svelte`, `GraphQL`, `Emmet`, `Lua` (and potentially `Go` if you add it back!).
- **Tree-sitter:** Enhanced syntax highlighting, indentation, and text objects using [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- **Autocompletion:** Context-aware completion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and LSP sources.
- **Fuzzy Finding:** Fast file, buffer, command, and LSP symbol searching with [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- **Git Integration:** Seamless Git integration with [Neogit](https://github.com/NeogitOrg/neogit) (or `gitsigns.nvim` if you prefer).
- **File Explorer:** Intuitive file Browse with [Neo-tree](https://github.com/nvim-tree/nvim-tree.lua) (or `nvim-tree.lua`).
- **Theming:** [Your chosen theme] (e.g., `tokyonight.nvim`, `catppuccin`, `nightfox.nvim`).
- **Utility & Quality of Life:** Various small plugins and settings for improved navigation, window management, and overall productivity.

---

## 🚀 Installation

This configuration is intended for **Neovim v0.9.0+**.

1.  **Backup (Optional but Recommended):** If you have an existing Neovim configuration, back it up:

    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak # Linux/macOS
    # On Windows: Rename C:\Users\pc\AppData\Local\nvim to C:\Users\pc\AppData\Local\nvim.bak
    ```

2.  **Clone the repository:**

    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git) C:\Users\pc\AppData\Local\nvim
    ```

    (Replace `your-username/your-repo-name.git` with the actual path to your GitHub repository.)

3.  **Install Dependencies:**

    - **Git:** Make sure Git is installed and in your system's PATH.
    - **A C Compiler:** For `nvim-treesitter` to compile parsers, you need a C compiler. On Windows, [Zig](https://ziglang.org/download/) (and adding `C:\path\to\zig.exe` to your PATH) is a great lightweight option. Alternatively, [MinGW-w64](https://mingw-w64.org/) or Visual Studio Build Tools can work.
    - **Node.js & npm (for some LSPs):** Many JavaScript/TypeScript LSPs require Node.js and npm.

4.  **Launch Neovim:**
    Open Neovim:

    ```bash
    nvim
    ```

    Lazy.nvim will automatically detect missing plugins and prompt you to install them. Mason.nvim will also start downloading and installing LSP servers and other tools. **Allow these processes to complete.** You may need to restart Neovim once after the initial setup.

5.  **Troubleshooting:**
    - If you encounter `No C compiler found!` errors, ensure you have a C compiler installed and its `bin` directory is in your system's PATH.
    - If Treesitter parsers fail to download/compile, try running `:TSUpdate` or deleting the problematic parser directories in `C:\Users\pc\AppData\Local\nvim-data\lazy\nvim-treesitter\parser\` and restarting Neovim.
    - For LSP issues, run `:LspInfo` in a buffer to see attached servers, or `:checkhealth` for general Neovim health checks.

---

## ⌨️ Keybindings

Here are some of the most frequently used keybindings. For a full list, refer to the `lua/keymaps.lua` (or similar) file in the configuration.

- `<leader>pv` / `<leader>pf` / `<leader>ps`: Open/find files (using Telescope)
- `<leader>ca`: Code action (LSP)
- `<leader>rn`: Rename symbol (LSP)
- `gd`: Go to definition (LSP)
- `gD`: Go to declaration (LSP)
- `gi`: Go to implementation (LSP)
- `K`: Show hover documentation (LSP)
- `<leader>D`: Show buffer diagnostics (Telescope)
- `<leader>d`: Show line diagnostics (float window)
- `[d` / `]d`: Navigate diagnostics
- `<leader>rs`: Restart LSP server
- `<leader>gc`: Open Neogit (or `git signs` diff)

---

## 📦 Plugins

This configuration leverages the following key plugins:

- **[Lazy.nvim](https://github.com/folke/lazy.nvim):** The best plugin manager.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):** Official Neovim LSP client configurations.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp):** Auto-completion framework.
- **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp):** nvim-cmp source for LSP.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter):** For parsing and highlighting.
- **[mason.nvim](https://github.com/williamboman/mason.nvim):** Universal package manager for LSP servers, formatters, etc.
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim):** Bridges Mason and nvim-lspconfig.
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim):** Highly extensible fuzzy finder.
- **[Neo-tree.nvim](https://github.com/nvim-tree/nvim-tree.lua):** A fast and flexible file explorer.
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim):** Git integration for diffs and blames.
- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim):** My chosen colorscheme.
- `{any other significant plugins you use}`

---

## 📸 Screenshots (Optional but Highly Recommended)

Include some screenshots here! It's a great way to showcase your setup.
You can drag and drop images directly into the GitHub README editor, or link to them if hosted elsewhere.

---

## 🙏 Credits & Inspiration

- This configuration is heavily inspired by and built upon various community resources, including:
  - [ThePrimeagen's Neovim config](https://github.com/ThePrimeagen/init.lua)
  - [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
  - Various helpful GitHub Gists and Reddit posts.
- Special thanks to the developers of all the amazing Neovim plugins!

---

Feel free to open an issue or pull request if you have questions or suggestions!
