FROM node:lts-buster

WORKDIR /app

COPY . .

RUN npm install && npm install -g pm2

EXPOSE 9090

CMD ["npm", "start"]
