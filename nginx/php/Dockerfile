FROM nginx
MAINTAINER Nik Petersen, Viciware LLC (npetersen@viciware.com)

ADD php.conf /etc/nginx/php.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["nginx", "-g", "daemon off;"]