#! /bin/bash
for filename in ./*.vim; do
  realname=${filename:2:-4}
  assigned=`cat "$filename" | grep -P -o2 "let\s*(g:)*colors_name\s*=\s*['\"](\K[a-zA-Z0-9-_]+)" | head -1`
  # echo "$assigned"
  if [[ $realname != $assigned ]]; then
    echo $filename
  fi
done

