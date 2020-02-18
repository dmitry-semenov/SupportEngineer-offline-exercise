@echo on

docker-compose down
docker-compose up --build -d
For /F "Tokens=*" %%I in ('docker ps -aqf "name=supportengineer-offline-exercise-master_web"') Do Set CID=%%I

IF [%CID%] == [] (
  echo "Container not found. Restarting Docker"
  docker-compose down
  docker-compose up -d
) else (
  echo "Found container: %CID%"
  echo "Connecting to container..."
)

docker exec -ti %CID% bash
