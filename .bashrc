if [[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]]; then
  COMP_KNOWN_HOSTS_WITH_HOSTFILE="" # this suppresses use of /etc/hosts
  source /usr/local/share/bash-completion/bash_completion.sh
fi
LV=-Ou8
HISTCONTROL=ignoredups
HISTIGNORE="history*:ls*:top"
HISTSIZE=10000
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
export LESS='-R'
