#!/bin/bash
filetype="*.conf"
origin="nginx-01.com"
replace="nginx-02.com"
count=0

  for file in $(grep -l -R $origin $filetype);

      do
        sed -e "s/$origin/$replace/ig" $file > tempfile.tmp
        mv tempfile.tmp $file
      let count++;
      if [[ $count == 100 ]] ; then
	      exit 0
      fi      
      done; 
