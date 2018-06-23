FROM node:alpine
COPY package*.json /
COPY routes/* /routes/
COPY bin/* /bin/
COPY public/* /public/
COPY views/* /views/
RUN npm install
COPY bootstrap.sh /
RUN chmod +x bootstrap.sh
ADD app.js /app.js
CMD ["node", "/app.js"]