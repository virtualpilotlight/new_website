FROM alpine:3.15
RUN apt-get update 
RUN apt-get upgrade 
RUN ufw status 
RUN ufw allow 22 
RUN ufw allow 53 
RUN ufw allow 80 
RUN ufw allow 443 
RUN ufw enable 
RUN apt-get install nginx 
RUN systemctl start nginx 
RUN	cd /var/www 
RUN git clone https://github.com/virtualpilotlight/new_website.git 
RUN	cd /new_website 
RUN mv virtualpilotlight /etc/nginx/sites-available
RUN	cd /etc/nginx/sites-available 
RUN ln -s virtualpilotlight /etc/nginx/sites-enabled 
RUN systemctl reload nginx 
EXPOSE 80 22 53 443
