git clone --depth 1 https://github.com/Delius/painmanager_rails app

cd app

source "/usr/local/share/chruby/chruby.sh"
chruby ruby

gem install bundler

bundle install --without=development,test
bundle exec rake db:migrate

if [[ $? != 0 ]]; then
  echo
  echo "== Failed to migrate. Running setup first."
  echo
  bundle exec rake db:setup && \
  bundle exec rake db:migrate
fi

bundle exec rails server
