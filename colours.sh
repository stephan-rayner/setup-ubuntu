#!/bin/bash
#
# MINTAINER Stephan Rayner <stephan@echosec.net>

# Colour Coding
# Usage: echo -e "${cyan}>>${reset} regular_colours ( ${gree}is_green${reset} | ${red}is_red${reset} ): \c";
reset=`tput sgr0`;
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
magenta=`tput setaf 5`
cyan=`tput setaf