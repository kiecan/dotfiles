# Chezmoi Dotfiles

This repo contains all of the dotfiles that are backup up using `chezmoi`. You can find more information about that tool here: [chezmoi.io](https://www.chezmoi.io)

## Getting started

To add a file to chezmoi, run:

```bash
chezmoi add <path/to/file/folder>
```

To restore files to a new machine, run: 

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```
