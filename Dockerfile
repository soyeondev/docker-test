FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./

# install -> 몇버전 이상은 괜찮다고 명시할 경우 최신 버전으로 install함
# RUN npm install
# ci -> package-lock.json에 명시된 버전으로 install함
RUN npm ci

COPY index.js .

ENTRYPOINT ["node", "index.js"]