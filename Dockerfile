FROM ubuntu
RUN sudo apt-get update
RUN sudo apt-get upgrade
RUN sudo ufw status
RUN sudo ufw allow 22
RUN sudo ufw allow 53
RUN sudo ufw allow 80
RUN sudo ufw allow 443
RUN sudo ufw enable
RUN sudo apt-get install nginx
RUN sudo systemctl start nginx
RUN sudo git clone https://github.com/virtualpilotlight/new_website.git

