FROM alpine
RUN sudo apt-get update 
RUN	sudo apt-get upgrade 
RUN	sudo ufw status 
RUN	sudo ufw allow 22 
RUN	sudo ufw allow 53 
RUN	sudo ufw allow 80 
RUN	sudo ufw allow 443 
RUN	sudo ufw enable 
RUN	sudo apt-get install nginx 
RUN	sudo systemctl start nginx 
RUN	cd /var/www 
RUN	sudo git clone https://github.com/virtualpilotlight/new_website.git 
RUN	cd /new_website 
RUN	sudo mv virtualpilotlight /etc/nginx/sites-available
RUN	cd /etc/nginx/sites-available 
RUN	sudo ln -s virtualpilotlight /etc/nginx/sites-enabled 
RUN	sudo systemctl reload nginx 
EXPOSE 80 22 53 443
