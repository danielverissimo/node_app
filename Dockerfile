FROM node:alpine
COPY package*.json /
COPY routes/* /routes/
COPY bin/* /bin/
COPY public/* /public/
COPY views/* /views/
RUN npm install
ADD app.js /app.js
CMD ["node", "/app.js"]