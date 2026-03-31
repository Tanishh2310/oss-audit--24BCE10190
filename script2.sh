#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git" 

# Check if package is installed using rpm
# &>/dev/null hides the standard output and errors from the user
if rpm -q $PACKAGE &>/dev/null; then
  echo "$PACKAGE is installed."
  
  # Find version and summary using a pipe and extended grep
  rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
  echo "$PACKAGE is NOT installed."
fi

echo "--- Package Philosophy ---"

# Case statement to print a short description based on the package name
case $PACKAGE in
  httpd) 
    echo "Apache: The web server that built the open internet." 
    ;;
  mysql) 
    echo "MySQL: Open source at the heart of millions of apps." 
    ;;
  git) 
    echo "Git: Distributed version control designed for speed and data integrity." 
    ;;
  vlc) 
    echo "VLC: The cross-platform media player that plays almost anything." 
    ;;
  python3) 
    echo "Python: An interpreted language focused on code readability and simplicity." 
    ;;
  vim) 
    echo "Vim: The ubiquitous text editor built for efficiency and power users." 
    ;;
  *) 
    echo "Description for $PACKAGE is not available in this script." 
    ;;
esac
