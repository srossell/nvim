# NEOVIM configuration

So far tested under linux (debian)

## Installing neovim

[instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim)

```
sudo apt-get install neovim
```

The python support was installed with the recomended packages.

## Using YouCompleteMe plugin

To get YouCompleteMe (YCM) to work with my "main" conda repository, I added
this line to my init.vim file (located at ~/.config/nvim)

```
let g:python3_host_prog='/home/me/anaconda3/envs/main/bin/python'
```

After adding that line, I followed YCM's
[instructions](https://github.com/ycm-core/YouCompleteMe#linux-64-bit) on
installing dependencies.

Thereafter I created a start directory:

```
mkdir -p ~/.config/pack/bundle/start
```

Inside which I cloned the YCM
[repository](https://github.com/ycm-core/YouCompleteMe). You will need to run:

```
git submodule update --init --recursive
```

Make sure that you activate the conda environment before running:

```
python ./install.py --all
```

Last, inside nvim, add the package:

```
:packadd YouCompleteMe
```



