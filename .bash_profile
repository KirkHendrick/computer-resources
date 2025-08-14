#Paths
export PATH="$PATH:/usr/local/bin/"

PATH=$PATH:/usr/bin/
PATH=$PATH:/bin/

#Editor
#export EDITOR=/u

#Shell Prompt
export PS1='\u@\w: $ '
export SUDO_PS1='\u@\w: # '

#Colors
export CLICOLOR=1
export TERM=xterm-256color

# Aliases
alias gpm='git push -u origin master'

#JsTestDriver
export JSTESTDRIVER_HOME="/usr/local/bin"

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="~/Library/Python/3.5/bin:${PATH}"

PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/Library/Apple/usr/bin:/opt/cross/bin"
