FROM nginx:1.15.0-alpine

USER root
ENV INSTALL_PATH /test-deployment
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY ./public_html .

RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]
