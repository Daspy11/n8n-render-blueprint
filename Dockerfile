# Usamos la imagen oficial de n8n
FROM n8nio/n8n:latest

# Establecer el directorio de trabajo
WORKDIR /data

# Asegurar que el comando `n8n` está disponible
RUN ls -lah /usr/local/bin/n8n && n8n --version

# Exponer el puerto de n8n
EXPOSE 5678

# Definir el comando de inicio
CMD ["n8n"]
