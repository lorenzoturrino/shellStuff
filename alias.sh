# python
function senv {
  source ${1:-env}/bin/activate
}
alias denv='deactivate'

# django
alias rserv='manage.py runserver'
alias mama='manage.py makemigrations'
alias mami='manage.py migrate'

# mysql i hate you
alias my='mysql -p'

# serial monitor
alias xopen='xdg-open'
alias seop='screen /dev/ttyUSB0 115200'

# git stuff
function glp {
  git pull ${1:-origin} `git rev-parse --abbrev-ref HEAD`
}

function gup {
  git push ${1:-origin} `git rev-parse --abbrev-ref HEAD`
}

function gco {
  git checkout ${1:--}
}

alias gitclear="git branch | grep -v \"master\" | xargs git branch -D"

# pass
function genpass {
  </dev/urandom tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' | head -c ${1:-32}  ; echo
}

# vpn
function vpn {
  sudo systemctl ${1:-restart} openvpn@client
  sleep 4
  curl ifconfig.me
}

# kube
alias kk=kubectl
