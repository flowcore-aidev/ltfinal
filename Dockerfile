FROM node:18
WORKDIR /app
COPY client/package*.json ./client/
RUN cd client && npm install
COPY client/ ./client
WORKDIR /app/client
CMD ["npm", "start"]
