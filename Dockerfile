# Sử dụng image cơ sở PHP Apache
FROM php:7.4-apache

# Copy mã nguồn của website vào thư mục /var/www/html
COPY website /var/www/html

# Cấu hình Apache để chạy PHP
RUN a2enmod rewrite

# Khởi động lại dịch vụ Apache
RUN service apache2 stop
RUN service apache2 start

# Mở cổng 80 để lắng nghe các kết nối HTTP
EXPOSE 80

# Khởi động Apache để chạy webserver
CMD ["apache2-foreground"]