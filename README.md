# BingeBounty

## Dependencys

### Ruby and Ruby on Rails

    ruby 3.1.2
    Rails 7.0.3.1

### Database (postgres)

    sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
    sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"

## Quickstart

    git clone git@github.com:BingeBounty/BingeBounty.git
    cd BingeBounty
    bundle
    rails db:create
    rails db:migrate
    rails s
