FROM node:20.10-alpine3.19 AS build
RUN mkdir /tmp/kanuseite
WORKDIR /tmp/kanuseite
COPY . .
RUN npm install
RUN npm run build

FROM node:20.10-alpine3.19
RUN mkdir /home/kanuseite
WORKDIR /home/kanuseite
COPY package*.json .
COPY --from=build /tmp/kanuseite/build .
#RUN npm install --omit dev
CMD [ "node", "index.js" ]