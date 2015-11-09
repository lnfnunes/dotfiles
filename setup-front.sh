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
echo "   |__Synching Sublime Packages and Settings..."
# Download Package Controll
wget https://packagecontrol.io/Package%20Control.sublime-package -O ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package -N -q
# Download Packages
wget https://raw.githubusercontent.com/lnfnunes/dotfiles/master/sublime/Package%20Control.sublime-settings -O ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings -N -q
# Download Preferences
wget https://raw.githubusercontent.com/lnfnunes/dotfiles/master/sublime/Preferences.sublime-settings -O ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings -N -q
echo "${green}✔ ${nc}Sublime is synchronized"

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
  #echo "${red}✖ ${nc}NodeJS must be (manually) installed! Check nodejs.org${nc}"
  #exit 1
  echo "${red}✖ ${nc}Installing Node..."
  nvm install stable
fi
echo "${green}✔ ${nc}Node is installed"

package=`npm list -g gulp grunt | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing Gulp/Grunt..."
  npm install -g gulp grunt-cli
fi
echo "${green}✔ ${nc} |__ Gulp/Grunt is installed"

package=`npm list -g bower yo | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing Bower/Yo..."
  npm install -g bower yo
fi
echo "${green}✔ ${nc} |__ Bower/Yo is installed"

package=`npm list -g jshint lint jscs grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing jshint/csslint/jscs..."
  npm install -g jshint csslint jscs
fi
echo "${green}✔ ${nc} |__ jshint/csslint/jscs is installed"

echo "${green}Everything is installed. EVERYTHING !"
echo "\$\$\$---  Show me the code!!!  ---\$\$\$${nc}"
echo ""
