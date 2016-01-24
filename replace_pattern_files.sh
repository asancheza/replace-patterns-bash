#!/bin/bash

# Replace 'foo' in any file names with 'bar'
DIR="tests"
MATCHES=0

for i in `ls $DIR`
do
  # Replace 'foo' in any file names with 'bar'
  if grep -q foo $DIR/$i
  then
    mv $i ${i//foo/bar}
  else
    MATCHES=1
  fi
  # Find files to change
  if grep -l 'foo' $DIR/$i >> file_names_changed.txt
  # Replace
  then
    sed -i ' ' 's/foo/bar/g' $DIR"/"$i
  else
    CHANGED=1
  fi
done

if [[ $MATCHES==1  ]]
then
  echo "Not existing matches"
fi
if [[ $CHANGED==1 ]]
then
  echo "Not files changed"
else
  cat file_names_changed.txt
fi
