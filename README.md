# Dotfiles

This repository contains my personal configuration files for various tools and applications. These dotfiles help to set up a consistent development environment across different machines.

## Contents

- **.zshrc**: Zsh shell configuration
- **nvim/**: Neovim configuration

## Installation

To install these dotfiles on your machine, you can clone this repository and create symbolic links to the dotfiles in your home directory.

### Clone the Repository

```sh
git clone https://github.com/0ne83/dotfiles.git ~/dotfiles
```

### Create Symbolic Links

Here are some example commands to create symbolic links for the dotfiles:

```sh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/nvim ~/.config/nvim
```

You can also use a script to automate the linking process:

```sh
cd ~/dotfiles
./install.sh
```

## Customization

Feel free to customize these dotfiles to suit your needs. If you make any improvements, consider contributing back to this repository.
