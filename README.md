# .files
:zap:curl -L https://git.io/wdhifdotfiles | bash:zap:  
After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent: it can safely be run
multiple times.

I'm using [Dotbot](https://github.com/anishathalye/dotbot) to manage my .files.

## Install a Vim plugin
Plugins are managed with [Pathogen.vim](https://github.com/tpope/vim-pathogen). You will have to create a new submodule in `vim/bundle` to add a plugin.
```
git submodule add PLUGIN_GIT_REPO vim/bundle/PLUGIN_NAME
```
Where PLUGIN_GIT_REPO is the url of the git repository of a plugin and PLUGIN_NAME must be the same as the one in the git repository url.
EG. `git submodule add https://github.com/tpope/vim-pathogen.git vim/bundle/vim-pathogen`

