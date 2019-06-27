# format_docker_rails
format of creating docker and rails

1. git clone this some directory 

 $ git clone https://github.com/koyamaaaa/format_docker_rails.git

2. do rails new

 $ docker-compose run web rails new . --force --database=mysql

 
3. fix database.yml

  default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: hoge # username of docker-compose.yml
  password: hoge # password of docker-compose.yml
  host: hoge_db # depends_on of docker-compose.yml

4. create db

$ docker-compose run web rails db:create