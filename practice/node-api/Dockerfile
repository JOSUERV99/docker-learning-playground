FROM node:lts
WORKDIR /usr/local/project
COPY ./files/project/package*.json ./
RUN npm install
COPY ./files/project/ .
ENV PORT=5000
EXPOSE 5000
CMD [ "npm", "start"]