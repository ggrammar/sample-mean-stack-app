# sample-mean-stack-app

This is a work-in-progress sample MEAN stack application that I've Dockerized. 

The code is based on https://www.mongodb.com/languages/mean-stack-tutorial . I've swapped out MongoDB Atlas for MongoDB, to make it easier to run. I've also added tons of comments to describe how the stack is built, how it works, and how it interacts with itself. 

MEAN stack:
 - MongoDB (database)
 - Express.js (web framework)
 - Angular.js (frontend/javascript framework)
 - Node.js (webserver)

# Build

```
# Installation things that I'll probably need to build the docker container
npm init
# install runtime dependencies
npm install cors dotenv express mongodb
# install dependencies that we need just for development
npm install --save-dev typescript @types/cors @types/express @types/node ts-node
# this dumps a ton of stuff (50MB+) into the node_modules directory - do we need to check this in to source control?
```

# Run

`docker-compose up`

Networking and some configuration is handled by Docker Compose - see docker-compose.yml for more information.

TODO: How do I retrieve the IP address of this container, and put it into the .env file?

# Misc Notes

```
# something something typescript? I think the typescript I'm writing in server/src 
# is all meant for node.js, or maybe for express.js?

# figure out a better way to handle secrets in ATLAS_URI
# change ATLAS_URI to something more appropriate, now that we'ere enot using MongoDB Atlas

# https://www.mongodb.com/support-policy/lifecycles
looks like 7.0 is likely to have support through August 2026? still TBD though

I think I'll need to write a docker-compose file or something to connect my Node.js docker container and my MongoDB docker container. 
added --network app-network to all docker run commands
MONGO_INITDB_ROOT_USERNAME and MONGO_INITDB_ROOT_PASSWORD set, .env ATLAS_URI updated to point to "admin" database, able to connect
able to connect to localhost:5200, which means that node connection to mongo is working! very cool!
```

Notes:
 - https://www.mongodb.com/mean-stack
 - https://www.mongodb.com/languages/mean-stack-tutorial
 - https://www.mongodb.com/languages/mern-stack-tutorial

## Questions That Still Need Answers

 - Why do we need both Express and Angular?
 - What is the default port for Node.js servers?
 - What is the LTS version for each of these technologies?


## Questions That Have Answers

 - What is the default port for MongoDB? 27017
