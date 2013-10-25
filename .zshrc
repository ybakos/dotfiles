export TECS_HOME=/Users/ybakos/projects/mines/csci498
export JAVA_HOME=/Library/Java/Home
export CLASSPATH=$CLASSPATH:/Applications/weka-3-6-1.app/Contents/Resources/Java/weka.jar:/Users/ybakos/jars/mysql-connector-java-3.1.14-bin.jar
export ANT_HOME=/usr/bin/ant
export SVN_EDITOR="subl -w"
export EDITOR="subl -w"
export LC_CTYPE=en_US.UTF-8

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="yong"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# Customize to your needs...
export PATH=/opt/ImageMagick/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Library/PostgreSQL/8.3/bin:/Applications/splunk/bin:/Users/ybakos/projects/410/tools:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/Library/PostgreSQL/9.1/bin:/Users/ybakos/projects/android/tools:/usr/local/bin/sbt/bin:.


[[ -s "/Users/ybakos/.rvm/scripts/rvm" ]] && source "/Users/ybakos/.rvm/scripts/rvm"  # This loads RVM into a shell session.