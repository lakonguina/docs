FROM node:20-alpine

WORKDIR /app
COPY . .

RUN npm i -g mint

ENV PORT=3000
EXPOSE 3000

CMD ["sh", "-lc", "mint dev --host 0.0.0.0 --port ${PORT}"]

