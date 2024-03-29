if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# # NVM
# export NVM_DIR="$HOME/.nvm"
  # [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  # [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# bash completions for git commands
# Found on https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
# Updated on 2019-05-07
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

# source ~/.git-completion.bash
# If this file exist then load it
# if [ -f ~/.git-completion.bash]; then
#   source ~/.git-completion.bash
# fi

if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

eval "$(gh completion -s bash)"

# Aliases

## Shortcuts
alias ll='ls -al'
# alias ll='ls -lshG'
alias editbash='subl ~/.bash_profile'

# curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
# export PATH="/opt/homebrew/bin:$PATH"


## sublime text snippets shortcut
# SNIPPETS=sublime-snippets
# alias st3snippets='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/${SNIPPETS}; ll'
alias subl-packages='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/; ll'

# Commed to update, upgrade, clean up and run doctor
# alias brewup='brew update && brew upgrade && brew cleanup && brew doctor'

## Git commands
# alias log='git log'
# alias wut='git log master...${branch} --oneline'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
# alias fetch='git fetch'
# alias push='git push origin head'
# alias pull='git pull'
# alias fp='fetch && pull'
# alias gmm='git merge master'
# alias recent='git for-each-ref --sort=-committerdate refs/heads/'
# alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias prettylog='git log --oneline --decorate --graph --all'
alias gfs='git ls-files -s'
alias gt='git log --graph --abbrev-commit --decorate --oneline'
alias logauthors='git log --pretty=format:"%h - %an, %ar : %s"'
# alias http-serve='http-server'

## Recommended shell aliases
# alias gs='git status '
# alias ga='git add '
# alias gb='git branch '
# alias gc='git commit'
# alias gd='git diff'
# alias go='git checkout '
# alias gk='gitk --all&'
# alias gx='gitx --all'
alias pf='git push --force-with-lease'

# alias got='git '
# alias get='git '

## Switch repos
DIR=~/Sites
alias h='cd ~/'
alias w='cd ${DIR}; ll'
alias hub='cd ~/GitHub; ll'


## Themes
alias icon='cd ~/GitHub/icon; ll'
alias testament='cd ~/GitHub/testament; ll'
alias mrparker='cd ~/GitHub/mrparker; ll'
alias vantage='cd ~/GitHub/vantage; ll'
alias fashionopolism='cd ~/GitHub/fashionopolism; ll'
alias foodie='cd ~/GitHub/foodie; ll'
alias dawn='cd ~/GitHub/dawn; ll'
alias debut='cd ~/GitHub/debut; ll'
alias drop='cd ~/GitHub/drop; ll'
alias aperture='cd ~/GitHub/aperture; ll'
alias supply='cd ~/GitHub/supply; ll'
alias common='cd ~/GitHub/theme-common; ll'
alias themecommon='cd ~/GitHub/theme-common; ll'
alias theme-common='cd ~/GitHub/theme-common; ll'
alias undrgrnd-framework='cd ~/GitHub/undrgrnd-framework; ll'
alias apollo='cd ~/GitHub/undrgrnd-framework; ll'
alias theme-helpers='cd ~/GitHub/theme-helpers; ll'
alias theme-framework='cd ~/GitHub/theme-framework; ll'
alias helpers='cd ~/GitHub/theme-helpers; ll'
alias wru='cd ~/GitHub/wru; ll'
alias forge='cd ~/GitHub/forge; ll'
alias theme-tweaks='cd ~/GitHub/theme-tweaks; ll'
alias tweaks='cd ~/GitHub/theme-tweaks; ll'
alias learnings='cd ~/GitHub/LinkedIn-Learning; ll'
alias pack='shopify theme package; open .'
alias grand='cd ~/GitHub/grand; ll'

## Shopify
alias sts='shopify theme serve'

# Logging in and out
alias loginDevTestament='shopify logout; shopify login --store=dev-underground-testament'
alias loginDemoStore='shopify logout; shopify login --store=tylersdemo'
alias loginColorStore='shopify logout; shopify login --store=wau-color-schemes'
alias loginBlocksStore='shopify logout; shopify login --store=wau-theme-blocks'
# alias loginWruStore='shopify logout; shopify login --store=tylerswru'
alias loginLearningMetaobjectsStore='shopify logout; shopify login --store=learning-metaobjects'
# alias login2021Store='shopify logout; shopify login --store=tyler2021'
# alias loginPhilsJetWashStore='shopify logout; shopify login --store=phils-jet-wash'


## Server quick starts
alias js='jekyll serve --watch'
alias jbuild='bundle exec jekyll serve'
alias ps='python -m SimpleHTTPServer 4000'
# alias hs = 'http-server -p 8000'


# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# Add support for `smerge` command
PATH="/Applications/Sublime Merge.app/Contents/SharedSupport/bin:{$PATH}"
export PATH

# Enable tab completion
# source ~/git-completion.bash

# Change command prompt
# source ~/.udacity-terminal-config/git-prompt.sh
# Edit ~/.bashrc or ~/.bash_profile

if [ -f ~/.git-prompt.bash ]; then
  source ~/.git-prompt.bash
  # export PS1='\W$(__git_ps1 "(%s)") > '
fi

# source ~/git-prompt.sh

# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$blue \W
$ $reset"

# add homebrew completions
# https://docs.brew.sh/Shell-Completion

# if type brew 2&>/dev/null; then
#   for completion_file in $(brew --prefix)/etc/bash_completion.d/*; do
#     source "$completion_file"
#   done
# fi
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# Add brew ruby to path in shell config.
# from Jekyll installation guide: https://jekyllrb.com/docs/installation/macos/.
# export PATH=/usr/local/opt/ruby/bin:$PATH


# export PATH=$HOME/.gem/ruby/3.0.0/bin:$PATH
# export PATH="/usr/local/opt/ruby/bin/ruby:$PATH"
# Based on "`brew --prefix ruby`/bin"
# export PATH=/usr/local/opt/ruby/bin:$PATH
# Based on "`gem environment gemdir`/bin"
# export PATH=/usr/local/lib/ruby/gems/3.0.0/bin:$PATH




export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export NVM_SYMLINK_CURRENT=true

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc
# export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
