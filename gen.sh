#!/usr/bin/env bash
set -e

SC_VER="0.1-beta"
OUT_FILE="favicon.ico"

msg_info() {
  echo -e "\e[0;34m[i]\e[0m $1"
}

show_info() {
  echo -e "\n~~~~~~                          ~~~~~~"
  echo "~~~~                              ~~~~"
  echo "~~~    Favicon Generator Script    ~~~"
  echo -e "~~     \e[0;91mOzan Sazak\e[0m (aka \e[0;96m@bassman\e[0m)    ~~"
  echo "~~~~                              ~~~~"
  echo -e "~~~~~~                          ~~~~~~\n"
  msg_info "Version: \e[41m$SC_VER\e[0m"
  msg_info "Lang   : Bash Script\n"
}

show_usage() {
  echo -e "\e[4;37mUsage\e[0m: ./`basename $0` <file> [outfile]"
  echo -e "\n\e[4;37mArguments:\e[0m"
  echo -e "  file:    Image file which will be used to generate favicon"
  echo -e "  outfile: Custom favicon output file name\n"
}

show_info

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  show_usage
  exit
fi

if [[ "$#" -eq 2 ]]; then
  OUT_FILE="$2"
fi

convert -resize x16 -gravity center -crop 16x16+0+0 $1 -flatten -colors 256 -background transparent $OUT_FILE

msg_info "Done. Bye!\n"
