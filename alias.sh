# python and django
function senv {
  source ${1:-env}/bin/activate
}
alias denv='deactivate'
alias rserv='manage.py runserver'
alias mama='manage.py makemigrations'
alias mami='manage.py migrate'

# mysql i hate you
alias my='mysql -p'

# git stuff
alias glp='git pull ${1:-origin} `git rev-parse --abbrev-ref HEAD`'
alias gup='git push ${1:-origin} `git rev-parse --abbrev-ref HEAD`'
