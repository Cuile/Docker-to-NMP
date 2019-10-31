FROM nginx:1.17.2

# set timezome
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezome

# docker build --tag cl-nginx:1 --rm --compress .