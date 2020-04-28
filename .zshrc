# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/xingze/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#export M2_HOME=/Users/xingze/Tools/maven/apache-maven-3.6.0
#export PATH=$PATH:$M2_HOME/bin
alias proxy='export all_proxy=socks5://127.0.0.1:1086'
alias unproxy='unset all_proxy'
eval "$(pyenv init -)"

export NVM_DIR="/Users/xingze/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
eval "$(pyenv virtualenv-init -)"

export PATH="/Users/xingze/Code/golang/xiaomi_soar/:/Users/xingze/Tools/scala/scala-2.12.8/bin:/Users/xingze/Tools/scala/sbt/bin:/Users/xingze/Tools/mongodb/mongodb-osx-x86_64-4.0.6/bin:/Users/xingze/go/bin:$PATH"
export soar="/Users/xingze/Code/golang/xiaomi_soar/soar"

source ~/.bash_profile
#export PATH="/Users/xingze/anaconda/bin:$PATH"

# Bigdata stack configure

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

export FLUME_HOME=/Users/xingze/Code/big_data/flume/apache-flume-1.6.0-cdh5.7.6-bin
export PATH=$FLUME_HOME/bin:$PATH

export ZK_HOME=/Users/xingze/Code/big_data/zookeeper/zookeeper-3.4.5-cdh5.7.0
export PATH=$ZK_HOME/bin:$PATH

KAFKA_HOME=/Users/xingze/Code/big_data/kafka/kafka_2.11-0.9.0.0
export PATH=$KAFKA_HOME/bin:$PATH

SCALA_HOME=/Users/xingze/Code/big_data/scala/scala-2.11.8
export PATH=$SCALA_HOME/bin:$PATH

MAVEN_HOME=/Users/xingze/Code/big_data/maven/apache-maven-3.3.9
export PATH=$MAVEN_HOME/bin:$PATH

HADOOP_HOME=/Users/xingze/Code/big_data/hadoop/hadoop-2.6.0-cdh5.7.0
export PATH=$HADOOP_HOME/bin:$PATH

HBASE_HOME=/Users/xingze/Code/big_data/hbase/hbase-1.2.0-cdh5.7.0
export PATH=$HBASE_HOME/bin:$PATH

SPARK_HOME=/Users/xingze/Code/big_data/spark/spark-2.2.0-bin-2.6.0-cdh5.7.0
export PATH=$SPARK_HOME/bin:$PATH

# Cassandra Environment
export CASSANDRA_HOME="/Users/xingze/Code/big_data/cassandra/apache-cassandra-3.11.4"
export PATH=$PATH:$CASSANDRA_HOME/bin


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#SHELLCHECK=/Users/xingze/Tools/shellcheck/
#export PATH=$SHELLCHECK:$PATH
