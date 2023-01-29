# MacOS from Scratch

This repository installs and configures most of the software I use on my personal MacOS from scratch using [Homebrew](https://brew.sh) and [Chezmoi](https://www.chezmoi.io).


## Installation


### 1. Install Homebrew

You need to start from somewher right? So, let's ensure Homebrew installed using [skip tap clonning](https://docs.brew.sh/Installation#skip-tap-cloning-beta) option:
```
export HOMEBREW_INSTALL_FROM_API=1
export HOMEBREW_NO_ANALYTICS=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

This also will install Command Line Tools for Xcode, and git tool for the next steps.
  
### 2. Clone this repository to your local drive

```
git clone https://github.com/kimus/macos-from-scratch
cd macos-from-scratch
```

### 3. Run `bootstrap.sh` script

From here it's expected to be all automatically.
```
./bootstrap.sh
```

By default it uses your current user name (enviornment variable `USER`) to get your dotfiles from github. You can use my own like this:
```
GITHUB_USERNAME=kimus ./bootstrap.sh
```

## Defaults

This script will setup a banch of tools, applications and Configurations.


### Tools and Applications

Applications (installed with Homebrew Cask):

  - [Docker](https://www.docker.com/)
  - [Google Chrome](https://www.google.com/chrome/)
  - [Slack](https://slack.com/)
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [Fork](https://fork.dev/)
  - [iTerm2](https://iterm2.com/)
  - [Oh My Zsh](https://ohmyz.sh)
  - [Obsidian](https://obsidian.md/)

Check `Brewfile`for the full list of tools and applications.


### Visual Studion Code Extensions

Check `vscodefile` for the full list of Visual Studio Code extensions.


### MacOS System Preferences

There are a few other preferences and settings added on for various apps and services. Check `osxfile` for a list of macos specific system preferences.


### dotfiles

Finally, the [dotfiles](https://github.com/kimus/dotfiles) are also installed into the current user's home directory, including the .osx dotfile for configuring many aspects of macOS for better performance and ease of use. You can disable dotfiles management by setting configure_dotfiles: no in your configuration.



## Usefull Links

- https://github.com/atomantic/dotfiles
- https://gist.github.com/MohammedEsafi/81953d7901a8ec6c08cfb77d68de6a7a
- https://mattstauffer.com/blog/series/setting-up-a-new-os-x-development-machine/
