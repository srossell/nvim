# NEOVIM configuration

So far tested under linux (debian)

## Installing neovim

[instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim)

```
sudo apt-get install neovim
```

## Installing vim-plug. A plugin manaager.

[vim-plug](https://github.com/junegunn/vim-plug)

Just copy the Neovim curl command.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Once vim-plug has been installed, you need to create a configuration file, that
for nvim should be located at `~/.config/nvim/init.vim`.

Add the following lines: (you are free to choose the location of your plugins)
```
call plug#begin('~/.local/share/nvim/plugged')

call plug#end()
```

Between those lines above you add the plugins. To install the plugins you need
run `:PlugInstall`


# Installing conquer of code

[coc](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim)

First we need to install node >= 12.12. I tried coc's instructions using curl,
but failed because of some permissions. `apt-get` will install an old version.
I found this [site](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04). Which advise worked for me:

```
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
```
To install coc packages run `CocInstall <package-name>`. For
Python the package is `coc-pyright`

