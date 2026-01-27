# .dotfiles

This is technically a dump land for my dotfiles, act as a backup if I ever fucked up a thing while configurating my lovely Archcraft. You might find these as messy, as these are mine nevertheless.

If you want to use my configs, go ahead, but caution:\
It's not well made, and it could be broken on you.\
Use them on full responsibility.

## How to Stow

This repo's directory replicates the `$HOME` directory, so to stow them, you just do:

```bash
stow -t ~ .
```

Or even better (for explicit dotfiles picking and verbose info):

```bash
stow -n -v -t ~ --dotfiles .
```

This will stow all files and folders **with . prefix**, so in this case I also have README.md and LICENSE,
but since they are not prefixed with . (not a dotfile), they are ignored by stow.

## Contents

These are all the list of program that has its own spaces in this dotfiles repo:

- Neovim (contains both local and Lazy plugin config)
- Git
- bspwm *and* sxhkd (Archcraft's structure)
- Zsh (with Oh-My-Zsh)
- Niri
- Waybar

That's it. Goodbye folks.
