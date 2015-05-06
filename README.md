# komischfarben.de codebase v2

## deploying

    git clone https://github.com/nonchip/komischfarben2 komischfarben.de
    cd komischfarben.de
    git submodule init
    git submodule update
    cd _lazuli
    ./setup.zsh
    ./luarocks install markdown
    cd ..
    ./run.zsh

see `config.moon` about passwords