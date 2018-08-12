# Purpose of $BASEPATH is the default of $PATH as it was at time of initial system setup
# Doing this so $PATH always starts from a base, just in case opening shell within a shell
set -x BASEPATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games

# Environment variables. These are also being used to make up $PATH
set -x USER_BIN ~/bin
set -x APPS /apps
set -x JDK_HOME $APPS/jdk1.8.0_121
set -x JAVA_HOME $JDK_HOME/jre
set -x JRE_HOME $JAVA_HOME
set -x GRADLE_HOME /apps/gradle-4.8.1
set -x GROOVY_HOME /apps/groovy-2.4.9
set -x NODE_HOME /apps/node-v8.11.3-linux-x86
set -x LOCAL_NODE_MODULES ./node_modules

# Setup $PATH variable staring with $BASEPATH
set PATH $BASEPATH $JDK_HOME/bin $JAVA_HOME/bin $GRADLE_HOME/bin $NODE_HOME/bin $GROOVY_HOME/bin $USER_BIN $LOCAL_NODE_MODULES/.bin

# function for echoing variables to the screen
function echo_variables
   echo "          BASEPATH: $BASEPATH"
   echo "          USER_BIN: $USER_BIN"
   echo "              APPS: $APPS"
   echo "          JDK_HOME: $JDK_HOME"
   echo "         JAVA_HOME: $JAVA_HOME"
   echo "          JRE_HOME: $JRE_HOME"
   echo "       GRADLE_HOME: $GRADLE_HOME"
   echo "       GROOVY_HOME: $GROOVY_HOME"
   echo "         NODE_HOME: $NODE_HOME"
   echo "LOCAL_NODE_MODULES: $LOCAL_NODE_MODULES"
   echo "              PATH: $PATH"
   echo "settings - edit fish settings"
   echo "settings_prompt - edit prompt settings"
end

# allow easy editing of the config.fish file aka fish settings
function settings
   vim ~/.config/fish/config.fish
end

# allow easy editing of the fish_prompt.fish file aka fish prompt creation
function settings_prompt
   vim ~/.config/fish/functions/fish_prompt.fish
end

# echo variables to the screen for the Humans
echo_variables
