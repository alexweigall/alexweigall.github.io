export CLICOLOR=1
#export PS1="\e[0,32m[\W]$ \e[m"
export PS1="[\W]$ "
alias a2b='cd /Users/alexweigall/AdWordsToBing'
alias info='vim /Users/alexweigall/AdWordsToBing/Test/info.php'
alias run='php /Users/alexweigall/AdWordsToBing/Test/info.php'
alias fm='vim /Users/alexweigall/AdWordsToBing/Test/thefullmonty.php'
alias lab='vim /Users/alexweigall/AdWordsToBing/Libraries/Labels.php'
alias lib='vim /Users/alexweigall/AdWordsToBing/Test/AdWordsToBingLibrary.php'
alias el='vim /Users/alexweigall/AdWordsToBing/Libraries/EntityLabels.php'
alias aa='cd /Users/alexweigall/AnalyticsAudit'
alias mylogin='mysql -uroot'
alias px='cd ~/Project-X'
alias acc='cd ~/Project-X/services/ad-copy-checker'
alias uc='cd ~/Project-X/services/url-checker'
alias nl='cd ~/Project-X/services/negative-lists'
alias fe='cd ~/Project-X/apps/px/'
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
alias python='python3'
alias pip='pip3'
alias deval='eval $(docker-machine env)'
alias ui='cd ~/px'
alias dlist='docker ps --format "table {{.Names}}\t{{.Image}}"'
alias dsql='docker exec -it web_mysql_server_1 mysql -ptesting'
alias bbm='cd /Users/alexweigall/Project-X/apps/two-four-seven-bidder/services/bing-bid-modifier'
alias gbm='cd /Users/alexweigall/Project-X/apps/two-four-seven-bidder/services/google-bid-modifier'
alias sc='cd ~/Project-X/apps/spell-checker/services'
alias kc='kubectl'
alias clean='docker stop $(docker ps -aq) && docker system prune -f'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexweigall/google-cloud-sdk/path.bash.inc' ]; then . '/Users/alexweigall/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexweigall/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/alexweigall/google-cloud-sdk/completion.bash.inc'; fi

mkcd () {
    mkdir "$1"
    cd "$1"
}
export PATH="/usr/local/opt/node@14/bin:$PATH"
