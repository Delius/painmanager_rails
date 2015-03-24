git clone --depth 1 git@github.com:Delius/painmanager_rails.git

cd app

bundle install

bundle exec rake db:migrate

if [[$? != 0 ]]; then
  echo
  echo "== Failed to migrate. Runing setup first "
  echo
  bundle exec rake db:setup && \
  bundle exec rale db:migrate
fi

bundle exec rails server
