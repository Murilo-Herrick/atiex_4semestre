# Imagem base
FROM nginx:alpine

# Remove configuração default
RUN rm /etc/nginx/conf.d/default.conf

# Copia o HTML
COPY index.html /usr/share/nginx/html/index.html

# Copia o nginx.conf customizado
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expõe a porta 80
EXPOSE 80

# Comando padrão
CMD ["nginx", "-g", "daemon off;"]
