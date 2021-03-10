FROM node:10.19-alpine

WORKDIR /front-end/
COPY . .

RUN npm install -g @angular/cli@latest
RUN npm i
ENV CHROME_BIN=/usr/bin/chromium-browser

CMD ["ng", "serve", "--host", "0.0.0.0"]
