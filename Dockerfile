FROM node:alpine
RUN npm install
ADD app.js /app.js
CMD ["node", "/app.js"]