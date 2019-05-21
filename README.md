# Contents
- [Mac applications](#mac-applications)
    - [Spectacle](#spectacle)
- [nvm](#nvm)
    - [Install node versions and set default](#install-node-versions-and-set-default)
- [Debug on a mobile device](#debug-on-a-mobile-device)
- [VS Code](#vs-code)
    - [Settings](#settings)
    - [Extensions](#extensions)
    - [Debugging](#debugging)
- [iTerm2](#iTerm2)
    - [Settings](#iterm2-settings)
- [git](#git)
    - [gitconfig](#gitconfig)
    - [git alias](#git-alias)
    - [Handy git commands](#handy-git-commands)
- [Docker](#docker)
- [Learning Resources](http://google.co.uk)

---
## Mac applications
### Spectacle
[Spectacle app](https://www.spectacleapp.com/) - extremely useful tool to organise your apps , move windows between displays. Memorise shortcuts, you won't have to take your fingers off the keyboard as much. 

---

## Frontend
### nvm
[nvm](https://github.com/nvm-sh/nvm) (Node Version Manager) is a useful tool which helps in maintaining different versions of node on a machine. Particularly useful when you have to switch between different versions often. Also, it's a neater way of organisaing your node environment. 

**Note: installing nvm through Homebrew is no longer supported**

Update `~/.bash_profile` or your `~/.bashrc` with the following line at the end of the file:
```
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # Load NVM
```

#### Install node versions and set default

Install node . 
```
$>nvm install 8.9.4
$>nvm install 10.0.0
$>nvm install 10.0.0
```
Set the default node version to use across the system:
```
$>nvm alias default 10.0.0
```

### Debug on a mobile device 📝
---
## VS Code

### Settings📝

### Extensions

#### Git
* [Gitlens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)

#### Web development
* [ES6 code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
* [HTML Snippets](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets)
* [jshint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.jshint)
* [TSLint](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)
* [Intellisense for CSS class names in HTML](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)
* [Sass](https://marketplace.visualstudio.com/items?itemName=robinbentley.sass-indented)
* [CSS Peek](https://marketplace.visualstudio.com/items?itemName=pranaygp.vscode-css-peek)
* [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)

#### Settings, Prettifiers
* [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
* [EditorConfig for VSCode](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
* [Prettier - Code Formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
* [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
* [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)

#### Vendors
* [Atlasian for VS Code](https://marketplace.visualstudio.com/items?itemName=Atlassian.atlascode)
* [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)

### Debugging 📝
---

## iTerm2
Using the default terminal app is perfectly acceptable. The following are suggestions around how you can avoid performing repititive tasks and focus more on things that require your attention. 

[iterm2](https://www.iterm2.com/) is an amazing replacement for the default terminal app and lets you do a whole bunch of customisation and save preferences. 

### Settings 📝
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

*To set [P4Merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge) as your diff and mergetool. Add the following settings to your gitconfig file*
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
### git alias
It is easier to manage all your aliases within a single [~/.bash_aliases](resources/root/.bash_aliases) file. Specify all git related aliases within a dedicated section. 

### Handy git commands
a. Revert all the changes to `index.html` file to 1 commit before `9b02747010d493f7b`:
```
$>git checkout 9b02747010d493f7b~1 public/src/index.html
```
Show only local branches: 
```
git branch
```
List all local branches and the remote branches that they’re tracking:
```
git branch -vv
```
List all local and remote branches:
```
git branch -a
```
Search for a specific branch (local or remote):
```
git branch -a | grep 'branch name'
```

b. Worktrees

Create a new worktree with a new branch `BUG-123` in a one up folder (assuming you are currently in the root of your project directory) named `BUG-123-directory` and make it track remote branch `remotes/origin/bugfix/BUG-123-fixes-build`:
```
$>git worktree add -b BUG-123 ../BUG-123-directory remotes/origin/bugfix/BUG-123-fixes-build
```
---
### Learning Resources
* [git branching models](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
