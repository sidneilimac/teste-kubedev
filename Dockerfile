FROM node:14.15.4
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY . /app
EXPOSE 8080
CMD ["node", "server.js"]
#ENV MONGODB_DB = kubedevnews
#ENV MONGODB_HOST = postgres
#ENV MONGODB_PORT => Posta de acesso ao MongoDB
#ENV MONGODB_USERNAME = kubedevnews
#ENV MONGODB_PASSWORD => Senha do MongoDB




