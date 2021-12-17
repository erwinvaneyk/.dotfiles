# setup.sh - sets up configuration on the host machine.

set -x

src="$(realpath $(dirname $0))"
dst="${HOME}"


echo "Installing dotfiles from ${src} in ${dst}..."

# bash
# ln -s ${src}/.bash_utils.sh ${dst}/.bash_utils.sh

# zsh
ln -s ${src}/.zshrc ${dst}
ln -s ${src}/.oh-my-zsh/ ${dst}

# git
ln -s ${src}/.gitignore_global ${dst}
ln -s ${src}/.gitconfig ${dst}

# vim
ln -s ${src}/.vim/ ${dst}
ln -s ${src}/.vimrc ${dst}
