export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source ~/.bash/my_bash_profile.sh

alias ls="ls -la"
alias flushcache="dscacheutil -flushcache"
alias flush="dscacheutil -flushcache"
alias v="mvim ."
alias clean="sudo sync;sudo purge;"

alias pg="'/Library/PostgreSQL/9.4/bin/psql' --host 'localhost' --port 5432 --username 'postgres'"

alias g="git"
alias gs="git status"
alias gr="git reset --hard origin/master"
alias reset="git reset --hard origin/master"
alias gf="git fetch --all"
alias gk="gitk --all"
alias ga="gitk add -p"
alias gp="git pull"
alias gfr="git fetch --all; git reset --hard origin/master"
alias be="bundle exec"
alias rspec="bundle exec rspec"
alias br="bundle exec rspec --color and --format specdoc"
alias test="bundle exec rspec --color and --format specdoc"
alias bi="bundle install"
alias server="bundle exec rails server"
cd ~/Workspace/projects/
