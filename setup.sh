# setup.sh - sets up configuration on the host machine.

set -x

src="$(dirname $0)"
dst="${HOME}"


echo "Installing dotfiles from ${src} in ${dst}..."

# bash
# ln -s ${src}/.bash_utils.sh ${dst}/.bash_utils.sh

# zsh
ln -s ${src}/.zshrc ${dst}/.zshrc
# ln -s ${src}/.oh-my-zsh ${dst}/.oh-my-zsh

# git
ln -s ${src}/.gitignore_global ${dst}/.gitignore_global
ln -s ${src}/.gitconfig ${dst}/.gitconfig

# vim
# ln -s ${src}/.vim ${dst}/.vim
ln -s ${src}/.vimrc ${dst}/.vimrc
