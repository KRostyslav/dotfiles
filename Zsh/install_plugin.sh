#!/bin/bash

ZSH_PLUGIN_DIR="/home/$USER/.oh-my-zsh/plugins"

#echo "=== Install zsh themes ==="

echo "=== Install zsh plugins ==="

if [ ! -d "${ZSH_PLUGIN_DIR}/zsh-autosuggestions" ]; then
	echo "Install zsh-autosuggestions"
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-autosuggestions
fi

if [ ! -d "${ZSH_PLUGIN_DIR}/zsh-syntax-highlighting" ]; then
	echo "Install zsh-syntax-highlighting"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting
fi

if [ ! -d "${ZSH_PLUGIN_DIR}/zsh-completions" ]; then
	echo "Install zsh-completions"
	git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh}/plugins/zsh-completions
fi

echo "Done"
