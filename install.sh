#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
mv -f ~/vim ~/vim_old
mkdir ~/vim
cp -rf ./* ~/vim 
mv -f ~/.vim ~/.vim_old
mv -f ~/vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
cp -f ~/.vim/.vimrc ~/
echo "正在努力为您安装bundle程序" > test
echo "安装完毕将自动退出" >> test
echo "请耐心等待" >> test
vim test -c "BundleInstall" -c "q" -c "q"
rm test
rm -rf vim
echo "安装完成"
