#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
blue=`tput setaf 4`
nc=`tput sgr0` # No Color


echo "${blue}## EDITOR ##${nc}"
sublime=`which subl`
if [ subl = "" ]; then
  echo "${red}✖ ${nc}Installing Sublime..."
  apt-get install sublime-text
fi
echo "${green}✔ ${nc}Sublime is installed"

vim=`which vim`
if [ vim = "" ]; then
  echo "${red}✖ ${nc}Installing Vim..."
  apt-get install vim
fi
echo "${green}✔ ${nc}Vim is installed"


echo "${blue}## SCM ##${nc}"
git=`which git`
if [ "$git" = "" ]; then
  echo "${red}✖ ${nc}Installing Git..."
  apt-get install git
fi
echo "${green}✔ ${nc}Git is installed"

svn=`which svn`
if [ "$svn" = "" ]; then
  echo "${red}✖ ${nc}Installing SVN..."
  apt-get install subversion
fi
echo "${green}✔ ${nc}SVN is installed"


echo "${blue}## NODE (modules) ##${nc}"
if [ -d ~/.nvm/ ]; then
  . ~/.nvm/nvm.sh
fi
nvm=`nvm --version | wc -l`
if [ "$nvm" != "1" ]; then
  echo "${red}✖ ${nc}Installing NVM..."

  if [ ! -d ~/.nvm/ ]; then
    git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
    . ~/.nvm/nvm.sh
    cd ..
  fi
fi
echo "${green}✔ ${nc}NVM is installed"

node=`which node`
if [ "$node" = "" ]; then
  echo "${red}✖ ${nc}Installing Node..."
  nvm install stable
fi
echo "${green}✔ ${nc}Node is installed"

package=`npm list -g gulp | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing gulp..."
  npm install -g gulp
fi
echo "${green}✔ ${nc} |__ Gulp is installed"

package=`npm list -g grunt | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing grunt..."
  npm install -g grunt-cli
fi
echo "${green}✔ ${nc} |__ Grunt is installed"

package=`npm list -g bower | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing bower..."
  npm install -g bower
fi
echo "${green}✔ ${nc} |__ Bower is installed"

package=`npm list -g yo | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing yo..."
  npm install -g yo
fi
echo "${green}✔ ${nc} |__ yo is installed"

echo "${green}Everything is installed. EVERYTHING !"
echo "\$\$\$---  Show me the code!!!  ---\$\$\$${nc}"
echo ""
