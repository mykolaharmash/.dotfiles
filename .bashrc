#!/usr/bin/env bash

export LANGUAGE="en_EN.UTF-8"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it" 
# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

export PATH="$PATH:$HOME/.bin"


# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Setup tab and window title functions for iterm2
# iterm behaviour: until window name is explicitly set, it'll always track tab title.
# So, to have different window and tab titles, iterm_window() must be called
# Source: http://superuser.com/a/344397
set_tab_name() {
    echo -e "\033]0;$@\007"
}

show_exit_code() {
    local ex=$?

    if [ $ex -ne 0 ]
    then
        echo -e "\033[0;31m$ex\033[0m"
    fi
}

safe_append_prompt_command show_exit_code
