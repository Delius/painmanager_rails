export APP_PWD=password

db() {
  docker run -P   --volumes-from app_data --name app_db -e  POSTGRES_USER=app_user -e POSTGERS_PASSWORD=$APP_PWD -d -t postgres:latest
 } 

app() { 
docker stop app
docker rm app
docker run -p 85:80 --link app_db:postgres --name app pawel/app
}

action=$1
${action}
