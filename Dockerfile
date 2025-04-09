# Menggunakan image Node.js versi 16 sebagai base image

FROM node:16                                

# Mengatur direktori kerja di dalam container

WORKDIR /app                               

# Menyalin package.json dan package-lock.json ke container

COPY package*.json ./                     

# Menginstall dependensi yang dibutuhkan aplikasi

RUN npm install                            

# Menyalin seluruh source code aplikasi ke dalam container
COPY . .                                  

# Menetapkan environment variable yang diperlukan
# PORT dan AMQP_URL disesuaikan melalui berkas .env atau diatur secara langsung pada Docker/Kubernetes
ENV PORT=3000                             
ENV AMQP_URL=amqp://rabbitmq:5672          

# Mengekspos port yang digunakan oleh order service
EXPOSE 3000                               

# Menjalankan aplikasi
CMD [ "node", "index.js" ]                
 