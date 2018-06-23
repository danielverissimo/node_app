FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nodejs --assume-yes
RUN apt-get install npm --assume-yes
RUN apt-get install stress --assume-yes
RUN apt-get install stress --assume-yes
COPY package*.json /
COPY routes/* /routes/
COPY bin/* /bin/
COPY public/* /public/
COPY views/* /views/
RUN npm install
COPY bootstrap.sh /
ADD app.js /app.js
CMD ["node", "/app.js"]