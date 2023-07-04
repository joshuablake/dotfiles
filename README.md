# dotfiles
Based on [this article's](https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b) management technique.

## Setting up on new PC

1. `git clone --bare git@github.com:joshuablake/dotfiles.git $HOME/dotfiles`.
2. `alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
1. `dotfiles checkout`. This may error if you're overwriting existing files. In this case, `mv` those files to a backup and decide if you want to keep them.
2. Run `dotfiles config --local status.showUntrackedFiles no` to ignore most files in your home directory.
