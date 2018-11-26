
sudo rm -rf /tmp/data; unzip data.zip -d  /tmp/data

cd data_analytics/docker_compose

sudo docker-compose --project-name data-cli -f docker-compose.yml up --build -d

sudo docker-compose --project-name data-cli -f docker-compose.yml run --rm data-client
