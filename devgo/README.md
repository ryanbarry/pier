# devgo

[![](https://badge.imagelayers.io/ryanbarry/devgo:latest.svg)](https://imagelayers.io/?images=ryanbarry/devgo:latest 'Get your own badge on imagelayers.io')

Use Docker to easily develop Golang code. This image currently includes the following tools:

* `go`
* `gofmt`
* `goimports` ­ _replacement for `gofmt` with feaures you want_

There are two scripts in the `scripts` dir of the git [repo](https://github.com/ryanbarry/pier) that simplify usage:

* `devgo.sh` ­ start an interactive container with your local go dir bound to /go
* `goimports.sh` ­ run goimports inside an ephemeral container, e.g. for integration with your editor

These are provided so that you can symlink them into your PATH for seamless development on your local machine using containers!
