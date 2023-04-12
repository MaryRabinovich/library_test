### project start

sudo mkdir docker-compose/postgres/pgdata

sudo mkdir docker-compose/postgres/pgadmin

sudo chown -R 5050:5050 docker-compose/postgres/pgadmin

sudo docker-compose up -d

### tests

sudo docker-compose -f docker-compose.tests.yml up

### next steps

1. make http-tests working

2. add https://www.redbeanphp.com/index.php