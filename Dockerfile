FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html robots.txt sitemap.xml llms.txt BingSiteAuth.xml site.webmanifest favicon.ico favicon.svg apple-touch-icon.png icon-192.png icon-512.png /usr/share/nginx/html/
COPY img /usr/share/nginx/html/img
EXPOSE 80
