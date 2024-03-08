FROM node:21-alpine

WORKDIR /app
COPY . .

EXPOSE 5173

RUN yarn install && yarn build

CMD ["yarn","dev","--host","0.0.0.0","--port","5173"]
