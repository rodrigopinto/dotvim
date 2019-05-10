# dotvim
My vim dot files.

Installation:

    git clone git@github.com:rodrigopinto/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init

Install the Vundle plugins, from terminal:

    vim +PluginInstall +qall

Be Happy! 🚀
