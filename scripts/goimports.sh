#! /bin/bash

opts=""
bindflag=""

while getopts "w:" flag; do
  case $flag in
    w)
        if [[ -n $OPTARG ]]; then
          infilepath=$OPTARG
          tempfile=$(basename $infilepath)
          tempfilepath=~/$tempfile
          if [[ -e $tempfilepath ]]; then
            echo "error: temp file exists!"
            exit 2
          fi
          cp $infilepath $tempfilepath
          opts="-w /$tempfile "$opts
          bindflag="-v $tempfilepath:/$tempfile"
        fi
        ;;
    ?)
      opts="-$OPTARG "$opts
      ;;
  esac
done

docker run -i --rm $bindflag ryanbarry/devgo goimports $opts

if [[ -e $tempfilepath ]]; then
  mv $tempfilepath $infilepath
fi
