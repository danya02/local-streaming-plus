all: image

image:
	sudo docker build -t danya02:local-streaming-plus .
run:
	sudo docker run -p 1935:1935 -p 8080:8080 jasonrivers/nginx-rtmp
