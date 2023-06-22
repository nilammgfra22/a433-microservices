# Docker akan mengunduh/mengambil base image bernama node dari Docker Hub dengan tag 14-alpine
FROM node:14-alpine

# Membuat direktori baru bernama app dan mengubah direktori kerja ke direktori tersebut.
WORKDIR /app

# Menyalin semua file yang ada di direktori project ke direktori kerja.
COPY . .

# Menambahkan environment variable bernama NODE_ENV dengan nilai production dan DB_HOST dengan nilai item-db.
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan perintah npm install --production --unsafe-perm untuk menginstal semua dependency yang dibutuhkan oleh aplikasi.
RUN npm install --production --unsafe-perm && npm run build

# Menjalankan perintah npm start untuk menjalankan aplikasi.
CMD ["npm", "start"]

# Mengekspos port 8080 yang digunakan oleh aplikasi.
EXPOSE 8080