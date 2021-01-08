# HOW TO USE

- clone & enter to directory
- `docker-compose up`
- open new terminal -> `docker-compose exec web bash`

inside container:
- `rails new . --force --database=postgresql` *README.md will be overwritten by rails

inside host machine:
- `sudo chown -R $USER:$USER .`
- `sudo chmod -Rf 777 .`

inside container:
- setup database connection at config/database.yml
```
  username: postgres
  password: password
  host: db
```
- `bundle exec rake db:create`
- `bundle exec rails s -p 3000 -b '0.0.0.0'`
- `exit`

- open browser http://localhost:3000
