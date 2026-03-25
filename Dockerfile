# Step 2: Download dependencies 

FROM node:20-alpine 

WORKDIR /app 

COPY package*.json ./ 

RUN npm install 

 

# Step 3: Run the code (build for production) 

COPY . . 

RUN npm run build 

 

# Serve with nginx 

FROM nginx:alpine 

COPY --from=0 /app/dist /usr/share/nginx/html 