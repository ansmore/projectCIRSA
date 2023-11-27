# Utiliza una imagen base ligera con soporte de servidor HTTP
FROM nginx:alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/share/nginx/html

# Elimina los archivos predeterminados de Nginx
RUN rm -rf ./*

# Copia los archivos publicados de tu aplicación Blazor al directorio de trabajo
COPY ./bin/Release/net8.0/publish/wwwroot .

# Expone el puerto 80
EXPOSE 80

# Inicia Nginx y sirve la aplicación
CMD ["nginx", "-g", "daemon off;"]
