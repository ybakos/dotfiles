export BASH_SILENCE_DEPRECATION_WARNING=1
export ANT_HOME=/usr/local/ant
export SVN_EDITOR="subl -w"
export EDITOR="subl -w"
export LC_CTYPE=en_US.UTF-8
#export MAGICK_HOME="/opt/ImageMagick"
#export DYLD_LIBRARY_PATH="/usr/local/lib"
export rvm_pretty_print_flag=force
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin

source /Users/yongbakos/Library/Python/3.6/bin/virtualenvwrapper.sh

source ~/.git-completion.bash
source ~/.aliases
source ~/.prompt

# added by travis gem
[ -f /Users/yongbakos/.travis/travis.sh ] && source /Users/yongbakos/.travis/travis.sh
# brew install autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Python: automatically activate venv if it exists
# function cd {
#     builtin cd "$@"
#     if [ -f "pyvenv.cfg" ] ; then
#         source bin/activate
#     fi
# }

# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# brew install fzf
# $(brew --prefix)/opt/fzf/install
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

HEROKU_AC_BASH_SETUP_PATH=/Users/ybakos/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
