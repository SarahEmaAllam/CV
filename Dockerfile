FROM node:lts-alpine

# install dependencies
RUN npm install -g http-server
# set a directory for the app
WORKDIR /CVWebsite

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .
# build app for production with minification
RUN npm run build

EXPOSE 5173

# cd into CVWebsite directory to npm run dev
CMD [ "http-server", "dist" ]