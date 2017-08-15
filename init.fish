# theme: Zish, scorphish, plain, nelsonjchen, lambda, kawasaki, jacaetevha, godfather, cor

set -xg JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
set -xg CLASSPATH . $JAVA_HOME/jre/lib/rt.jar $JAVA_HOME/lib/dt.jar $JAVA_HOME/lib/tools.jar

set -xg HADOOP_HOME /usr/local/Cellar/hadoop/2.8.0
set -xg HIVE_HOME /usr/local/Cellar/hive/2.1.0/libexec

set -xg PATH /usr/bin $PATH /usr/local/bin $JAVA_HOME/bin /Users/wenbin9/anaconda/bin /Users/wenbin9/bin

alias hadoop_start="/usr/local/Cellar/hadoop/2.8.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.8.0/sbin/start-yarn.sh"
alias hadoop_stop="/usr/local/Cellar/hadoop/2.8.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.8.0/sbin/stop-dfs.sh"
alias es="/usr/local/bin/emacs -nw "
alias python="/Users/wenbin9/anaconda/bin/python "
