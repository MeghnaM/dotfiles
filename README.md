# dotfiles
A collection of my dotfiles so that I can quickly import my custom configurations everywhere.

## Usage
1. Install [stow] (https://www.gnu.org/software/stow/)
```
brew install stow
```

2. Clone this repository in your home directory - if you clone this repository into any other directory, stow will create symlinks in that directory.
```
git clone git@github.com:MeghnaM/dotfiles.git
```

3. Go into dotfiles
```
cd dotfiles
```

4. Use stow to create symlinks to any files you like. For example, 
```
stow bash
```

will create a symlink in your home directory to all the dotfiles in the bash directory.
