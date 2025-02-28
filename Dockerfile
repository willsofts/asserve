FROM node:20.18.0

ENV NODE_ENV=production
ENV NPM_TOKEN=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

RUN mkdir -p /usr/node/app
WORKDIR /usr/node/app

COPY package.json /usr/node/app/
COPY .npmrc /usr/node/app/

RUN npm install --production --omit=dev

COPY . /usr/node/app

EXPOSE 8080

CMD ["npm", "start"]
