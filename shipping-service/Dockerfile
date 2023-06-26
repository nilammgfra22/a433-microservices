# Menggunakan node versi 14.21-alpine
FROM node:14.21-alpine

# Membuat direktori /app
WORKDIR /app

# Menyalin package.json dan package-lock.json
COPY package*.json ./

# Menjalankan perintah npm install
RUN npm install

# Menyalin seluruh file ke direktori /app
COPY . .

# Mengekspos port 3001
EXPOSE 3001

# Menjalankan perintah npm start
CMD [ "npm", "start" ]