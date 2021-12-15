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
	cd /var/www &&\
	sudo git clone https://github.com/virtualpilotlight/new_website.git &&\
	cd /new_website &&\
	sudo mv virtualpilotlight /etc/nginx/sites-available &&\
	cd /etc/nginx/sites-available &&\
	sudo ln -s virtualpilotlight /etc/nginx/sites-enabled &&\
	sudo systemctl reload nginx &&\
EXPOSE 80 22 53 443
