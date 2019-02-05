FROM node:alpine
LABEL maintainer="du.xiaoming86@gmail.com"

WORKDIR /hexo
VOLUME [ "/data" ]

RUN npm install hexo-cli -g
RUN hexo init . && npm install 

# set entrypoint
COPY entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh

EXPOSE 4000
ENTRYPOINT ["/root/entrypoint.sh", "s"]

# docker build --no-cache . -t dux/hexo
# docker run -it --rm -p 4000:4000 -v $PWD/local:/data dux/hexo
