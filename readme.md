# Personal dotfiles

This repository contain tools that I use mainly for software development and
navigation in the commandline. It contains a install script for Ubuntu
(though, I may consider make one for fedora later).

As I mainly develop in Node.js and Python, the install script was configured
to install these 2 languages by default. However, some tools used require
cargo (rust lang package manager), Rust is also being installed.

The install script only target fish shell as the primary shell and will `chsh`
to fish shell as a default shell. Therefore, when environment variables requires
for any tools, it is only configured in fish shell's config.

## Install

requirements

* none (clone this repository and run `./install.sh`)

**note**: you may require to `chmod` the install script to run on your system.

## Tools being installed

### Shell

* Fish shell

### CLI tools

* bat
* eza
* fd-find
* gdu
* lsd
* ripgrep
* unzip
* yazi
* zoxide

### Text Editor

Once the install script ran successfully, opening neovim for the first time will
install all packages defined in nvim config.

* Neovim (with astronvim)

### Programing languages

* Python
  * pyenv (for managing python versions)
* Node.js
  * fnm (for managing node version)
  * pnpm (for package management)
* Rust

### Programming tools

* tree-sitter-cli (for use with neovim for syntax highlighting and more)
* commitizen (for conventional commit message)
* cz-emoji-conventional (add some colors to conventional commit)

### Timezone

This install script also set Singapore's time as the defualt system time.
