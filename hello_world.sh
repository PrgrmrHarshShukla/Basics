#!/bin/bash

# ANSI escape codes for text formatting
bold=$(tput bold)
blink=$(tput blink)
reset=$(tput sgr0)
col=$(tput cols)
lines=$(tput lines)

# Colors
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

# Print "Hello World" with different effects and colors
echo -e "${bold}${blink}${red}Hello World${reset}"
echo -e "${bold}${blink}${green}Hello World${reset}"
echo -e "${bold}${blink}${yellow}Hello World${reset}"
echo -e "${bold}${blink}${blue}Hello World${reset}"
echo -e "${bold}${blink}${magenta}Hello World${reset}"
echo -e "${bold}${blink}${cyan}Hello World${reset}"
echo -e "${bold}${blink}${col}${cyan}Hello World${reset}"
echo -e "${bold}${blink}${lines}${cyan}Hello World${reset}"
