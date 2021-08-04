#!/bin/bash
function chpwd {
  # Check if a .ruby-version file exists
  if [[ -f "$PWD/.ruby-version" ]]; then
    ruby_version=`cat .ruby-version`
    if [[ ! -d "$HOME/.rbenv/versions/$ruby_version" ]]; then
      while true; do
        read REPLY\?"Ruby $ruby_version is not installed. Install it? [Yn] "
        case $REPLY in
          [Yy]* ) rbenv install $ruby_version; break;;
          [Nn]* ) break;;
          * ) echo "Please answer y or n.";;
        esac
      done
    fi
  fi
}
details=$(ruby RafatOmar.rb)
echo "Name,Email,Slack,Biostack,Twitter,Hamming" >> Hackbio.csv
echo "$details" >> Hackbio.csv

