FROM node:10-alpine
WORKDIR /workdir
COPY . .
COPY ["package.json", "yarn.lock", "./"]
RUN yarn install
RUN yarn build
CMD ["yarn", "start" ]
