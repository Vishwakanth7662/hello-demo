FROM node:13.12.0-alpine

# set working directory
WORKDIR /app


# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# add app
COPY . ./
RUN npm run build
# start app
EXPOSE 3000
CMD ["npm", "start"]  