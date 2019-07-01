FROM nginx:latest

COPY dockerRun.sh .
COPY reverse_proxy.conf /etc/nginx/conf.d/

CMD ["./dockerRun.sh"]