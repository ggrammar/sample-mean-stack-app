FROM node:lts-alpine3.17
# I'm using an LTS version of Node.js here, but maybe the tutorial uses a different
# version? Need to check this. 

WORKDIR /home/node/server

# WHy is ts-node installed as a development dependency, if we're using to run the server?
RUN ["npm", "install", "cors", "@types/cors", "dotenv", "express", "@types/express", "mongodb", "ts-node"]

ADD ./server /home/node/server

# npx is a separate binary, but it's basically shorthand for `npm --exec`, "run a
# command from a local or remote npm package".
ENTRYPOINT ["npx", "ts-node", "src/server.ts"]