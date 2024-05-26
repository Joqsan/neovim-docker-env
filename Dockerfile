FROM ubuntu:latest

RUN apt-get update && apt install -y \
    ca-certificates \
    gcc \
    ninja-build \
    gettext cmake unzip curl wget \
    git \
    python3 python-dev-is-python3 python3.10-venv \
    locales \
    nodejs npm \
    ripgrep \
    fd-find && ln -s $(which fdfind) /usr/local/bin/fd

# https://stackoverflow.com/a/33379487/6819878
RUN locale-gen en_US.UTF-8 \
    && export LANG=en_US.UTF-8 

RUN curl -kLO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz \
    && rm -rf /opt/nvim \
    && tar -C /opt -xzf nvim-linux64.tar.gz \
    && echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> $HOME/.bashrc