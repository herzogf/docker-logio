FROM docker-nexus.ww-intern.de/node:8.4

RUN cd /root && npm install -g log.io --user 'root' && npm cache clear && mv ~/.log.io /home/node/

USER node
WORKDIR /home/node

EXPOSE 28778 28777
CMD "log.io-server"
