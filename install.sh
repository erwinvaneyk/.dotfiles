# setup.sh - sets up configuration on the host machine.
#

root=$(dirname $0)

dst=${HOME}

set -x

# bash
ln -s ${root}/.bash_utils.sh ${dst}/.bash_utils.sh

# git
ln -s ${root}/.gitignore_global ${dst}/.gitignore_global
ln -s ${root}/.gitconfig ${dst}/.gitconfig

# vim
ln -s ${root}/.vimrc ${dst}/.vimrc
ln -s ${root}/.vim ${dst}/.vim

# Personal directory structure
mkdir -p ${dst}/src
mkdir -p ${dst}/bin
