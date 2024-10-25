git clone https://github.com/pink1514/october.git
cd october
docker build -t my-apache-image .
docker run -d -p 80:80 --name my-apache-container my-apache-image

