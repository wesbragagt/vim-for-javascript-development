FROM anatolelucet/neovim:stable

RUN apk add --no-cache git curl

WORKDIR /home/user
ENV HOME="/home/user"
ENV XDG_CONFIG_HOME="$HOME/.config/"
