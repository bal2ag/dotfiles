# dotfiles

Dotfiles for development environment.

## Fresh dev env

0. Clone this repo:
```
git clone git@github.com:bal2ag/dotfiles.git ~/.dotfiles
```
1. [Generate SSH key](https://roverdotcom.atlassian.net/wiki/spaces/TECH/pages/315883759/Creating+an+SSH+Key)
2. Make sure git is installed:
```
git --version
```
3. [Configure local git settings](https://help.github.com/articles/setting-your-commit-email-address-in-git/)
4. [Install Docker for Mac](https://download.docker.com/mac/stable/Docker.dmg)
5. [Install iTerm2](https://iterm2.com/)
6. [Install oh-my-zsh](https://ohmyz.sh/)
7. Import `oh-my-zsh` profile:
```
iTerm2 -> Preferences -> Profiles -> Gear icon -> Import JSON Profiles... -> ~/.dotfiles/iterm2_profile_Alex_DevEnv.json
```
8. Setup vim plugin manager:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Open `vim` and run `:PlugInstall`
9. Setup symlinks for each dotfile you want to use e.g.:
```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
```
ln -s ~/.dotfiles/.vimrc ~/.vimrc
```
