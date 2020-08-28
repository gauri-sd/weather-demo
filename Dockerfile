FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 54500

#CMD [ "npm", "environment" ]
#RUN export NODE_ENV=development

CMD [ "npm", "start" ]