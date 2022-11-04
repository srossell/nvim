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
The above includes the more recent nodejs in your apt index. To install run an ordinary apt-get:
```
sudo apt install nodejs
```

To install coc packages run `CocInstall <package-name>`. For
Python the package is `coc-pyright`

# Some packages I've installed.

I installed [vim-impaired](https://github.com/tpope/vim-unimpaired), which maps the square brackets "[" and "]" to iterate between, for example, buffers. To the next buffer you type `]b`, to go the previous: `[b`. The the first `[B` and to the last `]B`. It works with other things (e.g. quickfix lists), which I am unfamiliar with.

# TROUBLESHOOTING

220827. 
- I had to use the directory: `~./local/share/nvim/site/autoload` as the place to put the `plug.vim` script. Also I had to update the `init.vim` file with this directory. 
- I had to change the conquer of completion coc branch in the `init.vim` file from `release` to `master`.
- Before running PlugInstall, in a conda environment, I installed nodejs 16.x.x (don're remember the exact version).
- Then I ran, from nvim `:PlugInstall` ,
- Then changed to the `~/.local/share/nvim/pack/vimplug/coc.nvim` directory and ran the command: `npm install` (this had failed before when using the release instead of master branch for coc.
- After the above I could run, from within nvim, `CocInstall coc-pyright`

220830
The tab completion in coc works better if you use return to select the option you want. To get this working you need to add this line in your `init.vim`

`inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"`

221105

I got a message telling me that I needed a newwer neovim than 0.5.0. I ran the following and it worked.
```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```



