# format_docker_rails
format of creating docker and rails

1. git clone this some directory 

 $ git clone https://github.com/koyamaaaa/format_docker_rails.git

2. do rails new

 $ docker-compose run web rails new . --force --database=mysql

3. do docker-compose build

 $ docker-compose build
 
4. fix database.yml

  default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: password
  host: db <= change localhost to db

5. create db

$ docker-compose run web rails db:create

6. docker-compose up

finish!!!
