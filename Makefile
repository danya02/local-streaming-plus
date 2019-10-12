all: image

image:
	sudo docker build -t danya02/local-streaming-plus .
run:
	sudo docker run -p 1935:1935 -p 8081:80 danya02/local-streaming-plus
