FROM alpine
RUN sudo apt-get update &&\
	sudo apt-get upgrade &&\
	sudo ufw status &&\
	sudo ufw allow 22 &&\
	sudo ufw allow 53 &&\
	sudo ufw allow 80 &&\
	sudo ufw allow 443 &&\
	sudo ufw enable &&\
	sudo apt-get install nginx &&\
	sudo systemctl start nginx &&\
	sudo git clone https://github.com/virtualpilotlight/new_website.git &&\

