#!/bin/bash
font_color_initializer() {
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  BOLD=""
  NORMAL=""
  # Use colors, but only if connected to a terminal, and that terminal
  # supports them.
  if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
  fi
  if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    NORMAL="$(tput sgr0)"
  fi
}


banner() {
  echo "  ___               _      _     _   _       "
  echo " | _ )  __ _   ___ | |_   | |_  (_) | |  ___ "
  echo " | _ \ / _\` | (_-< | ' \  |  _| | | | | / -_)"
  echo " |___/ \__,_| /__/ |_||_|  \__| |_| |_| \___|"
}

banner
