#! /bin/bash

# the path on the host to which we will bind /go inside the container
HOSTGOPATH=~/code/go

# if $GOPATH is set, use that
if [[ -n $GOPATH ]]; then
  HOSTGOPATH=$GOPATH
fi

# command arg will always override
if [[ -n $1 ]]; then
  HOSTGOPATH=$1
fi

docker run -it --rm -v $HOSTGOPATH:/go ryanbarry/devgo
