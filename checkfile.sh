#! /bin/bash
for filename in ./*.vim; do
  realname=${filename:2:-4}
  assigned=`cat "$filename" | pcregrep -o2 "let[[:space:]]*(g:)*colors_name[[:space:]]*=[[:space:]]*['\"]([a-zA-Z0-9]+)['\"]"`
  # echo "$assigned"
  if [[ $realname != $assigned ]]; then
    echo $filename
  fi
done
