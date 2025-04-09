# Menggunakan base image Node.js
FROM node:16

# Atur direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json ke working directory
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin seluruh source code aplikasi ke dalam container
COPY . .

# Mengekspos port 3001
EXPOSE 3001

# Perintah untuk menjalankan aplikasi, pastikan entry point yang tepat
CMD [ "node", "index.js" ]
