#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
nc=`tput sgr0` # No Color


# EDITOR #
sublime=`which subl`
if [ subl = "" ]; then
  echo "${red}✖ ${nc}Installing Sublime..."
  apt-get install sublime-text
else
  echo "${green}✔ ${nc}Sublime is already installed"
fi


# NODE #
node=`which node`
if [ "$node" = "" ]; then
  echo "${red}✖ ${nc}NodeJS must be installed!"
  exit 1
else
  echo "${green}✔ ${nc}Node is already installed"
fi
package=`npm list -g gulp | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing gulp..."
  npm install -g gulp
else
  echo "${green}✔ ${nc} |__ Gulp is already installed"
fi
package=`npm list -g grunt | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing grunt..."
  npm install -g grunt-cli
else
  echo "${green}✔ ${nc} |__ Grunt is already installed"
fi
package=`npm list -g bower | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing bower..."
  npm install -g bower
else
  echo "${green}✔ ${nc} |__ Bower is already installed"
fi
package=`npm list -g yo | grep ERR`
if [ "$package" != "" ]; then
  echo "${red}✖ ${nc} |__ Installing yo..."
  npm install -g yo
else
  echo "${green}✔ ${nc} |__ yo is already installed"
fi
