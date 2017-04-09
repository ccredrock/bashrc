# .bashrc

# ====================================================================
# @doc command alias
# ====================================================================
alias ll='ls -l -h --full-time'
alias .grep='find -name "*.hrl" -o -name "*.erl" |xargs grep --color=auto -n'

alias ..='cd ..'
alias ...='cd ...'

alias .vimrc="vim ~/.vimrc"
alias .bashrc="vim ~/.bashrc"
alias .source="source ~/.bashrc"

# ====================================================================
# @doc nginx
# ====================================================================
function stop_nginx()
{
    PID=`ps aux |grep nginx |grep master |awk {'print $2'}` \
        && if [[ $PID != "" ]]; then sudo kill -QUIT $PID; fi
}
alias .spng="stop_nginx && echo stop_nginx ok"
alias .stng="sudo nginx && echo start_nginx ok"
alias .mdng="sudo vim /usr/local/nginx/conf/nginx.conf"
alias .rsng="stop_nginx && sudo nginx && echo restart_nginx ok"

# ====================================================================
# @doc 显示当前路径分支的脚本
# ====================================================================
#function parse_git_dirty {
#[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)"  ]] && echo "*"
#}

#function parse_git_branch {
#git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
#}
#PS1='\u@\h:\W\[\e[1;36m\]$(parse_git_branch)\[\e[0m\]$ '']]'
