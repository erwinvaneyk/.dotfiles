# setup.sh - sets up configuration on the host machine.
#

root=$(dirname $0)

# bash
ln -s ${root}/.bash_utils.sh ${home}/.bash_utils.sh

# git
ln -s ${root}/.gitignore_global ${home}/.gitignore_global
ln -s ${root}/.gitconfig ${home}/.gitconfig

# vim
ln -s ${root}/.vimrc ${home}/.vimrc
ln -s ${root}/.vim ${home}/.vim
