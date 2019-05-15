*DISCLAIMER: Content mentioned on this repository is based on my experience as a developer and the tools and preferences I've gotten accustomed to, over the years.*

# Contents
- [Mac applications](#macapplications)
    - [Spectacle](#spectacle)
- [Frontend](#frontend)
    - [nvm](#nvm)
    - [Debug on a mobile device](#debugonamobiledevice)
- [VS Code](#vscode)
    - [settings](#settings)
    - [extensions](#extensions)
    - [debugging](#debugging)
- [iTerm2](#iTerm2)
- [git](#git)
    - [gitconfig](#gitconfig)
    - [git alias](#gitalias)
    - [Handy git commands](#handy-git-commands)
- [Docker](#docker)
---
## Mac applications
### Spectacle
[Spectacle app](https://www.spectacleapp.com/) - extremely useful tool to organise your apps , move windows between displays. Memorise shortcuts, you won't have to take your fingers off the keyboard as much. 

---

## Frontend
### nvm
[nvm](https://github.com/nvm-sh/nvm) (Node Version Manager) is a useful tool which helps in maintaining different versions of node on a machine. Particularly useful when you have to switch between different versions often. Also, it's a neater way of organisaing your node environment :)

**Note: installing nvm through Homebrew is no longer supported**

### Debug on a mobile device 📝
---
## VS Code
### Extensions 📝
### Settings📝
### Debugging 📝
---

## iTerm2
Using the default terminal app is perfectly acceptable. The following are suggestions around how you can avoid performing repititive tasks and focus more on things that require your attention. 

[iterm2](https://www.iterm2.com/) is an amazing replacement for the default terminal app and lets you do a whole bunch of customisation and save preferences. 

### iTerm2 settings 📝
---

## git
### gitconfig 

It is handy to keep a list of frequently used git commands as aliases and to keep them in a separate file. 


a. Set up a global git configuration file


If you don't already have a global git config file setup already, feel free to use the the template below and modify as required. 
```
$>touch ~/.gitconfig
$>sudo vi ~/.gitconfig
```
`~/.gitconfig` contents:
```
    [color]
        ui = auto
    [color "branch"]
        current = yellow reverse
        local = yellow
        remote = green
    [color "diff"]
        meta = yellow bold
        frag = magenta bold
        old = red bold
        new = green bold
    [color "status"]
        added = yellow
        changed = green
        untracked = cyan
        [mergetool "p4merge"]
        cmd = /Applications/P4Merge.app/Contents/MacOS/p4merge $BASE $LOCAL $REMOTE $MERGED
        keepTemporaries = false
        trustExitCode = false
        keepBackup = false
        prompt = false
    [alias]
        br = branch
        cm = commit
        gs = status
        gd = diff
        gco = checkout
    [help]
        autocorrect = 1
    [pull]
        rebase = true
    [user]
        name = <Your name here without the brackets>
        email = <Add your email here and without the angle brackets>
    [color]
        ui = auto
    [core]
        excludesfile = /Users/<your username folder>/.gitignore_global
```

*Additional: I use [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge) as my diff and mergetool. Add the following settings if that is your preferred tool*
```
    [merge]
        tool = p4mergetool
    [mergetool "p4mergetool"]
        cmd = /Applications/p4merge.app/Contents/Resources/launchp4merge $PWD/$BASE $PWD/$REMOTE $PWD/$LOCAL $PWD/$MERGED
        trustExitCode = false
    [diff]
        tool = p4mergetool
    [difftool "p4mergetool"]
        cmd = /Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE
```

the shortcut in the `aliases` above will now let you do `$>gco develop-branch ` instead of `$>git checout develop-branch`. #winning!

### Shortcuts 📝

### Commands
a. Revert all the changes to `index.html` file to 1 commit before `9b02747010d493f7b`:

```
$>git checkout 9b02747010d493f7b~1 public/src/index.html
```

b. Worktrees

Create a new worktree with a new branch `BUG-123` in a one up folder (assuming you are currently in the root of your project directory) named `BUG-123-directory` and make it track remote branch `remotes/origin/bugfix/BUG-123-fixes-build`:
```
git worktree add -b BUG-123 ../BUG-123-directory remotes/origin/bugfix/BUG-123-fixes-build
```
---
## 2 cents
1. Become friends with the command line early on. Don't let it intimidate you. It gives you a deeper understanding of how stuff actually works. Once you gain some experience and expertise, you can always switch to a GUI (if you then wish).
2. Learn about git branching models - any organisation/ project follows more or less similar strategy. Atlasian has a good article [here](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow).