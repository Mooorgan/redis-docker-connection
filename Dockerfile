# we will inherit from the NodeJS v12 alpine OS image on DockerHub

FROM node:20-alpine
ENV TZ=Asia/Kathmandu

# add a user - this user will own the files in /home/app
RUN adduser -S app

ENV HOME=/home/app
WORKDIR /home/app
COPY . /home/app
# remove this following line when using a volume for node_modules
# RUN npm install

# we run a script to start the server; the array syntax makes it so ^C will work as we want
CMD  ["npm", "start"]
