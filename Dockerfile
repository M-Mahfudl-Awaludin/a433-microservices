# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin seluruh source code dari host ke container
COPY . .

# Menjalankan aplikasi dalam production mode
# DB_HOST diarahkan ke container database bernama item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependency production lalu build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080 agar bisa diakses dari luar container
EXPOSE 8080

# Menjalankan server ketika container dijalankan
CMD ["npm", "start"]
