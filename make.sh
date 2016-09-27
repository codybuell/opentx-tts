#!/bin/bash
#
# 

#################
# Configuration #
#################

VOICE='Karen'           # change to any osx provided voice
FILE='phrases.txt'      # relative to script location
OUTDIR='build'          # relative to script location

BUILD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &&  cd $OUTDIR && pwd )"
cd $BUILD

cat ../$FILE | while read line; do
  FILENAME=`echo $line | awk '{print $1}'`
  PHRASE=`echo $line | awk '{for(i=2;i<=NF;++i)print $i}'`
  [[ $FILENAME =~ ^#.*$ || $FILENAME == '' ]] && continue
  [[ $FILENAME =~ ::.*$ ]] && {
    cd $BUILD
    NEWDIR=`echo $FILENAME | sed 's/:://'`
    mkdir -p $NEWDIR
    cd $NEWDIR
    continue
  }
  say -v $VOICE --file-format=WAVE --data-format=LEI16@32000 -o $FILENAME $PHRASE
done
