source ~/.git-completion.bash

# ideas from http://pastie.org/pastes/165446
function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 20 ]; then CurDir=...${DIR:${#DIR}-12}; else CurDir=$DIR; fi'
#PS1="[\$CurDir] \$ "

export PS1="[\$CurDir]\$(parse_git_branch)$ "
#export RESIN_HOME=/usr/local/resin
#export CATALINA_HOME=/usr/local/tomcat
#export TOMCAT_HOME=$CATALINA_HOME
export ANT_HOME=/usr/local/ant
export SVN_EDITOR="subl -w"
export EDITOR="subl -w"
export LC_CTYPE=en_US.UTF-8
#export MAGICK_HOME="/opt/ImageMagick"
#export DYLD_LIBRARY_PATH="/usr/local/lib"

source ~/.aliases