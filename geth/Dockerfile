FROM alpine:3.7

COPY ./init /init 
RUN \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \ 
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 https://gitee.com/wocaa/go-ethereum.git && \
  (cd go-ethereum && make all) && \
  cp -r go-ethereum/build/bin/* /usr/bin/ && \
  geth init /init/init.json 
  #apk del go git make gcc musl-dev linux-headers && \
  #rm -rf /go-ethereum && rm -rf /var/cache/apk/*
EXPOSE 8545
EXPOSE 30303

