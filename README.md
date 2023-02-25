# My dotfiles

Here it's my configuration files for different stuff

## Neovim

1. Go to the neovim directory (for windows its should be `C:\Users\<USER>\AppData\Local\nvim`)
2. Exec following command

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force
```

3. Change init.vim file with those from the repo
4. In `init.vim` change our username at line 20 !!!

## Windows terminal

0. Install Windows Terminal and Git Bash
1. Download files from repo
2. Install font
3. Run powershell as non-administrator and run following commends:

```powershell
> iwr -useb get.scoop.sh | iex
> scoop install lsd
```

4. Place `.bashrc` in home directory ***`C:\Users\<USER-NAME>`***
5. Replace your settings.json with file from repo

### Additional links

* [powerline for git bash](https://github.com/diesire/git_bash_windows_powerline)
* [lsd](https://github.com/Peltoche/lsd)
* [font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono/NoLigatures/Regular/complete)
* [scoop](https://github.com/ScoopInstaller/Scoop)
* [tutorial from which i get this](https://www.youtube.com/watch?v=aQDsgCV4US0)
* [windows terminal themes](https://windowsterminalthemes.dev/)

## Alacritty

Place `alacritty.yml` in `~/.config/alacritty/alacritty.yml`

## i3wm

Replace the files with those from the repo
