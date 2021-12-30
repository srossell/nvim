# Setting up neovim for, primarily, Python development.

## Installing plug. A plugin manaager.

[vim-plug](https://github.com/junegunn/vim-plug)

Just copy the Neovim curl command.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Once vim-plug has been installed, you need to create a configuration file, that
for nvim should be located at `~/.config/nvim/init.vim`.

Add the following lines:
```
call plug#begin('~/.local/share/nvim/plugged')

call plug#end()
```

Between those lines above you add the pluggins. To insall the pluggins you need
run `:PlugInstall`


# Installing conquer of code

[coc](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim)

First we need to install node >= 12.12. I tried coc's instructions using curl,
but failed because of some permisions. apt-get will install an old version.
I foound this [site](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04). Which advises:

```
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
```
Worked for me. To install coc packages run `CocInstall <package-name>`. For
Python the package is `coc-pyright`




