# Chezmoi Dotfiles

This repo contains all of the dotfiles that are backup up using `chezmoi`. You can find more information about that tool here: [chezmoi.io](https://www.chezmoi.io)

## Getting started

To set up a new system run the followng:

```bash
chezmoi init git@github.com:kiecan/dotfiles.git

chezmoi git pull 

chezmoi apply
```

## Usage

To add a file to chezmoi, run:

```bash
chezmoi add <path/to/file/folder>
```

Remember to update the following for autopush:

FILE:  ~/.config/chezmoi/chezmoi.toml
```toml
[git]
    autoCommit = true
    autoPush = true
```
