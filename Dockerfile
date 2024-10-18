FROM node:18

RUN mkdir -p /usr/src/app-easy
WORKDIR /usr/src/app-easy

COPY package*.json /usr/src/app-easy/
RUN npm install

COPY . /usr/src/app-easy

RUN npm run build

EXPOSE 3579
RUN chown -R node /usr/src/app-easy
CMD [ "npm", "start" ]