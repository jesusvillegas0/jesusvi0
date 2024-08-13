# Usaremos una imagen base de Node.js
FROM node:14

# Crear directorio de la aplicación
WORKDIR /usr/src/app

# Copiar archivos de package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 8080

# Comando para iniciar la aplicación
CMD [ "node", "app.js" ]
