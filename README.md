# dotfiles
Based on [https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b](this article's) management technique.

## Setting up on new PC

1. `git clone --bare git@github.com:joshuablake/dotfiles.git $HOME/dotfiles`
1. Run `alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'` and add this to your `.bashrc` (or equivalent).
1. `dotfiles checkout`. This may error if you're overwriting existing files. In this case, `mv` those files to a backup and decide if you want to keep them.
