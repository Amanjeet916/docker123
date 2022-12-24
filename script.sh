#!/bin/bash

cd /root
rm -rf docker ;
git clone https://github.com/Amanjeet916/docker123.git;
docker system prune -af ;
cd /root/docker123 ;
docker build -t amanjeet916/aman916:myapache1 .
docker push amanjeet916/aman916:myapache1
docker rm -f mycontainer
docker system prune -af
docker run -itd -p 80:80 --name mycontainer amanjeet916/aman916:myapache1
