FROM node:12-alpine as builder
WORKDIR /app
COPY package.json /app/package.json
RUN npm install
COPY . /app
RUN npm run start
FROM node:12-alpine
WORKDIR /app
COPY --from=builder /app/dist /app
COPY package.json /app/package.json
RUN npm install --only=prod
EXPOSE 9000
USER node
CMD ["node", "index.js"]