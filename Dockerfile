# Usa uma imagem leve do Nginx baseada em Linux Alpine
FROM nginx:alpine

# Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do seu projeto para a pasta pública do Nginx
COPY . /usr/share/nginx/html

# Copia a configuração personalizada do Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expõe a porta 80 (padrão para web)
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]