if [ ! -d "october" ]; then
    git clone https://github.com/pink1514/october.git
fi
cd october
if [ "$(docker ps -aq -f name=my-apache-container)" ]; then
    docker stop my-apache-container
    docker rm my-apache-container
fi
if [ "$(docker images -q my-apache-image)" ]; then
    docker rmi my-apache-image
fi
docker build -t my-apache-image .
docker run -d -p 80:80 --name my-apache-container my-apache-image
