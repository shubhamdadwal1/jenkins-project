# Node Base Image
FROM node:18-alpine

#Working Directry
WORKDIR /app

#Copy the Code
COPY package*.json

#Install the dependecies
RUN npm install
COPY . . 
EXPOSE 3000

#Run the code
CMD ["node","app.js"]
