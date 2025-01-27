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
