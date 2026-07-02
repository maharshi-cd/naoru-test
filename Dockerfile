FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
COPY missing-file.txt /app/
CMD ["node", "app.js"]