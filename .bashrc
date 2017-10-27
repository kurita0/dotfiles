if [[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]]; then
  COMP_KNOWN_HOSTS_WITH_HOSTFILE="" # this suppresses use of /etc/hosts
  source /usr/local/share/bash-completion/bash_completion.sh
fi
#export PAGER=lv
LV=-Ou8
HISTCONTROL=ignoredups
HISTIGNORE="history*:ls -al:top"
HISTSIZE=10000
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
export LESS='-R'
enc() { openssl enc -aes-256-cbc -e | base64; }
dec() { base64 -d | openssl enc -aes-256-cbc -d; }
