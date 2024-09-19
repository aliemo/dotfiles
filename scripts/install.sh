#!/usr/bin/env bash

export DOT_FILES_ROOT=${HOME}/.config/dotfiles/

# Find OS Disro {{{
if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    ...
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    ...
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi

function do_install_packages() {
    sudo apt install -y make
    sudo apt install -y cmake
    sudo apt install -y curl
    sudo apt install -y wget
    sudo apt install -y ssh
    sudo apt install -y git
    sudo apt install -y gcc
    sudo apt install -y g++
    sudo apt install -y build-essential
    sudo apt install -y tree
    sudo apt install -y f-essential

}
function do_install_edatools() {
    sudo apt install -y ghdl
    sudo apt install -y iverilog
    sudo apt install -y verilator
    sudo apt install -y gtkwave
}

## Install Neovim (AppImage Download)
function do_install_vim() {

    sudo apt install -y neovim
    sudp apt install -y vim

    mkdir -p ~/.config/nvim
    ## Install VimPlug plugin Manager
    curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    [ -f ~/.vimrc ] && { mv ~/.vimrc ~/.vimrc.pre-dotfiles ; }
    [ -f ~/.config/nvim/init.vim ] && { mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.predots ; }
    ln -s ${DOT_FILES_ROOT}/nvim/vimrc ~/.vimrc
    ln -s ${DOT_FILES_ROOT}/nvim/vimrc ~/.config/nvim/init.vim

}

function do_install_tmux() {

    sudo apt install -y tmux
    [ -f ~/.tmux.conf ] && { mv ~/.tmux.conf ~/.tmux.conf.predotfiles ; }
    ln -s ${DOT_FILES_ROOT}/tmux/tmux.conf ~/.tmux.conf

}

function do_install_zsh_plugins() {

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

}
