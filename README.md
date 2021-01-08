# HOW TO USE

- clone & enter to directory
- `docker-compose up`
- `docker-compose exec web bash`

inside container:
- `rails new . --force --database=postgresql`
- `bundle exec rake db:create`
- `exit`

inside host machine:
- `sudo chown -R $USER:$USER .`
- `sudo chmod -Rf 777 .`
- `docker-compose exec web bash`

inside container:
- `bundle exec rails s -p 3000 -b '0.0.0.0'`
