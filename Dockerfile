FROM node:16-slim

WORKDIR /usr/src/app

COPY package*.json ./

# Gunakan npm ci untuk instalasi yang lebih cepat dan lebih dapat diandalkan
RUN npm ci --only=production

COPY . .

EXPOSE 3000

CMD [ "node", "start" ]