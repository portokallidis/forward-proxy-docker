FROM nginx:1.11.1

MAINTAINER Nick Portokallidis <portokallidis@gmail.com>

WORKDIR /usr/share/nginx/html
COPY . ./

ENV PORT 80

EXPOSE 80

CMD ["bash","run.sh"]