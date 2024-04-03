FROM ubuntu:latest

RUN apt-get update && apt install -y \
    ca-certificates \
    gcc \
    ninja-build \
    gettext cmake unzip curl \
    git \
    python3 python-dev-is-python3 python3.10-venv \
    locales \
    nodejs npm \
    ripgrep

# https://stackoverflow.com/a/33379487/6819878
RUN locale-gen en_US.UTF-8 \
    && export LANG=en_US.UTF-8 

# RUN apt install -y neovim
RUN git clone https://github.com/neovim/neovim.git

RUN cd neovim \
    && make CMAKE_BUILD_TYPE=RelWithDebInfo \
    && git checkout stable \
    && make install


# # RUN git clone --depth 1 https://github.com/neovim/neovim.git \
# #     && cd neovim \
# #     && git fetch --unshallow \
# #     && git pull --all

