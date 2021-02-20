### [Vim](http://www.vim.org/)

#### Install

These are the default instructions using Vim 8's `|packages|` feature. See
sections below, if you use other plugin managers.

1. Create theme folder (in case you don't have yet):

```
mkdir -p ~/.vim/pack/themes/start
```

If you use vim 8.0 (and not 8.2), you may need to use
`~/.vim/pack/themes/opt` instead.

2. Navigate to the folder above:

```
cd ~/.vim/pack/themes/start
```

3. Clone the repository using the "daywalker" name:

```
git clone https://github.com/daywalker/vim.git daywalker
```

4. Create configuration file (in case you don't have yet):

```
touch ~/.vimrc
```

5. Edit the `~/.vimrc` file with the following content:

```
packadd! daywalker
syntax enable
colorscheme daywalker
```

#### Install using other plugin managers

If you [use vim + pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/):

    cd ~/.vim
    git submodule add git@github.com:daywalker/vim.git bundle/daywalker

Place `colorscheme daywalker` after `execute pathogen#infect()`.

If you [use vim + vundle](https://github.com/VundleVim/Vundle):

    Plugin 'daywalker/vim', { 'name': 'daywalker' }
    :PluginInstall

Place `colorscheme daywalker` after `call vundle#end()`.

If you [use vim-plug](https://github.com/junegunn/vim-plug) (\`as\` will install
the plugin in a directory called 'daywalker' instead of just 'vim'):

    Plug 'daywalker/vim', { 'as': 'daywalker' }
    :PlugInstall

Place `colorscheme daywalker` after `call plug#end()`.

If you [use spacevim](https://spacevim.org), put the
following in `~/.SpaceVim.d/init.toml`:

```toml
[options]
  colorscheme = "daywalker"
  colorscheme_bg = "dark"
[[custom_plugins]]
  repo = "daywalker/vim"
  name = "daywalker"
  merged = false
```

---

Note that daywalker must be in your `'runtimepath'` to load properly: Version 2.0
introduced autoload functionality for part of the plugin, which doesn't work
without `'runtimepath'` properly set. Consult your plugin-managers documentation
to make sure you put daywalker on the `'runtimepath'` before loading it.
