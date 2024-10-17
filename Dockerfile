# Dockerfile - build our custom image
FROM python:3.8-slim   
WORKDIR /app 
COPY app.py . 
RUN pip install flask
CMD ["python", "app.py"]

# Node.js 18 
FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "index.js" ]
