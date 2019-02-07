FROM node:8

RUN apt-get update && apt-get install -y build-essential && apt-get install -y python
RUN mkdir -p /usr/santosh/cerner
WORKDIR /usr/santosh/cerner
COPY package*.json ./
RUN npm install
COPY . /usr/santosh/cerner
CMD ["npm", "start"]
CMD ["sh", "-c", "tail -f /dev/null"]
