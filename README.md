# dotfiles
Configuration files for my GNU/Linux setup

## Information

Window Manager: i3-gaps

Terminal: kitty

Shell: zsh

## Instalation

Run the following commands (assuming you use Arch Linux, have the `yay` AUR helper installed, and already have Xfce and zsh up and running):

  `# sudo pacman -S i3-gaps compton exa feh neovim papirus-icon-theme termite ttf-dejavu`

Then just copy all of the folders in this repository to '~/.config'. Please note that for the zsh config to be applied you need to run:

  `$ ln -s ~/.config/zsh/.zshrc ~/.zshrc`

Also note that the wallpaper is set as '~/walpaper.image', for easy wallpaper switching; so to set the wallpaper you also need a link:

  `$ ln -s ~/wallpaper.image /path/to/image`

### Keybinds

Keep in mind that in order to use my custom keybinds you have to install some additional programs:

  `# pacman -S alsa-tools pavucontrol playerctl`

And then uncomment the desired keybinds on '~/.config/i3/config'

### Keychain

To use the handy `keychain` for managing your ssh and gpg keys:

  `# pacman -S keychain`

Afterwards, uncomment the keychain line in '.config/zsh/zshrc'

Keep in mind I put my signing GPG key in ~/.gnupg/signing.key
