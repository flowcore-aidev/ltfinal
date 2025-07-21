FROM node:18

WORKDIR /app

COPY client/package*.json ./
RUN npm install

COPY client/ ./

CMD ["npm", "start"]
