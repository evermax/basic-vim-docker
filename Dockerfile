FROM ubuntu:14.04

RUN apt-get update && apt-get install -y tmux vim git

RUN git clone https://github.com/evermax/dotvim.git /root/.vim

RUN cd /root/.vim git checkout basic

RUN ln -s /root/.vim/vimrc /root/.vimrc

RUN git clone https://github.com/gmarik/Vundle.vim.git /root/.vim/bundle/Vundle.vim

RUN vim +PluginInstall +qall

COPY .tmux.conf /root/

RUN apt-get install -y exuberant-ctags

RUN apt-get install -y wget
