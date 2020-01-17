FROM node:10-alpine
WORKDIR /workdir
COPY ["package.json", "yarn.lock", "./"]
RUN yarn install
COPY . .
RUN yarn build
CMD ["yarn", "start"]
