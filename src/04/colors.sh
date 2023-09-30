#!/bin/bash

DEFAULT="\033[0m"

BGWHITE="\033[107m"
BGRED="\033[101m"
BGGREEN="\033[102m"
BGBLUE="\033[104m"
BGPURPLE="\033[105m"
BGBLACK="\033[40m"

WHITE="\033[97m"
RED="\033[91m"
GREEN="\033[92m"
BLUE="\033[94m"
PURPLE="\033[95m"
BLACK="\033[30m"

bg1=$DEFAULT
txt1=$DEFAULT
bg2=$DEFAULT
txt2=$DEFAULT

case $column1_background in
1) bg1=$BGWHITE ;;
2) bg1=$BGRED ;;
3) bg1=$BGGREEN ;;
4) bg1=$BGBLUE ;;
5) bg1=$BGPURPLE ;;
6) bg1=$BGBLACK ;;
esac

case $column1_font_color in
1) txt1=$WHITE ;;
2) txt1=$RED ;;
3) txt1=$GREEN ;;
4) txt1=$BLUE ;;
5) txt1=$PURPLE ;;
6) txt1=$BLACK ;;
esac

case $column2_background in
1) bg2=$BGWHITE ;;
2) bg2=$BGRED ;;
3) bg2=$BGGREEN ;;
4) bg2=$BGBLUE ;;
5) bg2=$BGPURPLE ;;
6) bg2=$BGBLACK ;;
esac

case $column2_font_color in
1) txt2=$WHITE ;;
2) txt2=$RED ;;
3) txt2=$GREEN ;;
4) txt2=$BLUE ;;
5) txt2=$PURPLE ;;
6) txt2=$BLACK ;;
esac
