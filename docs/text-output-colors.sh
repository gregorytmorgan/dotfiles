#
# Adding/removing color from text output
#
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#
# ANSI escape code colors
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37
#
# tput colors
# --------
# Num  Colour    #define         R G B
# 
# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1
#

RED='\033[0;31m'
NC='\033[0m' # No Color

output_with_color="I ${RED}love${NC} Stack Overflow"

# note the "-e"
echo -e $output_with_color

# test 1
echo -e  $output_with_color | ansi2txt 

# test 2
echo -e  $output_with_color | ansi2txt | col -bp 


# alt way to colorize

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# example 1
echo "${red}red text ${green}green text${reset}"

# example 2
echo "$(tput setaf 1)Red text $(tput setab 7)and white background$(tput sgr 0)"

# end file
