# By Tristan H. - https://github.com/trisweb
# Requirements: Bash, Spark - https://github.com/holman/spark, git bash extensions
# Admittedly a bit disorganized, but still works great.

LTGREEN="\[\033[40;1;32m\]"
LTBLUE="\[\033[40;1;34m\]"
CLEAR="\[\033[0m\]"
GRAY2="\[\033[40;1;30m\]"
LIGHT_GRAY="\[\033[40;1;33m\]"

NORMAL='\[\033[0m\]'
BLUE='\[\033[34;01m\]'
CYAN='\[\033[36;01m\]'
GREEN='\[\033[32;01m\]'
RED='\[\033[31m\]'
GRAY='\[\033[37;01m\]'
YELLOW='\[\033[33;01m\]'

# show branch and dirty status
function minutes_since_last_commit {
  local NOW=`date +%s`
  local LAST_COMMIT=`git log --pretty=format:'%at' -1`
  local SECONDS_SINCE_LAST_COMMIT=$((NOW-LAST_COMMIT))
  local MINUTES_SINCE_LAST_COMMIT=$((SECONDS_SINCE_LAST_COMMIT/60))
  echo $MINUTES_SINCE_LAST_COMMIT
}

function git_history_graph {
  for hour in $(seq 8 -1 0); do git log --author "Tristan Harward" --before="${hour} hours" --after="$[${hour}+1] hours" --format=oneline | wc -l; done | spark
}

function minutes_with_color {
  local G="$(__gitdir)"
  if [ -n "$G" ]; then
    local MINUTES=`minutes_since_last_commit`
    if [ "$MINUTES " -gt 120 ]; then
        local COLOR=${RED}
    elif [ "$MINUTES" -gt 30 ]; then
        local COLOR=${YELLOW}
    else
        local COLOR=${GREEN}
    fi
    local SINCE_LAST_COMMIT="|${COLOR}${MINUTES}m${NORMAL}|${COLOR}$(git_history_graph) ${NORMAL}"
    echo ${SINCE_LAST_COMMIT}
  fi
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "|⚡"
}

function parse_git_branch {
  local BRANCH=$(__git_ps1 "%s$(minutes_with_color)")
  [[ $BRANCH ]] && echo " [$BRANCH$(parse_git_dirty)]"
}

prompt_command() {
	export PS1="$LTGREEN\u$LTBLUE@\h:$LIGHT_GRAY\w$CLEAR"$(parse_git_branch)"\n❯ "
}

PROMPT_COMMAND=prompt_command
