# sodabottle

Soda Bottles have for years been a great way for companies to deliver your favorite flavors to your desk.  Now your soda bottle can bring you your favorite bottle/cork/beaker app.

# Description
Docker Container for executing python bottle based apps

# Overview
This container installs the needed components for executing a bottle based app including cork and beaker for auth and middleware.

# How to Use

Option A: Pull image from Docker Hub
1. docker pull jsims/sodabottle

Option B: Build from Dockerfile
1. Clone the repo to your docker host: git clone https://github.com/j-sims/sodabottle.git
2. Build the image: docker build -t sodabottle sodabottle

Run the Image:
docker run -d -p 8080:80 -v /local/path/to/sodabottle/app:/app jsims/sodabottle:latest #Change local path to

Access the running application:
Point browser to http://dockerhostip:8080 # You should receive a Hello World

You can now build out your bottle app in the /app path!

# Reverse Proxy
This container works well with the nginx proxy: https://hub.docker.com/r/jwilder/nginx-proxy/

Simply add a DNS A record 'foo.bar.com' pointed to your docker host and then run the container:  
docker run -d -e VIRTUAL_HOST=foo.bar.com -v /local/path/to/sodabottle/app:/app jsims/sodabottle:latest # change dns name and local path

# SSL Encrypted
The nginx proxy can also be used to provide SSL encryption for security.
