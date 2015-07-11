# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# Rbenv
export RBENV_ROOT=/usr/local/var/rben
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Aws automcoplete
source /usr/local/share/zsh/site-functions/_aws

# Java home
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Android sdk home
export ANDROID_HOME=/usr/local/opt/android-sdk

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

if [ "$TMUX" = "" ]; then tmux; fi
