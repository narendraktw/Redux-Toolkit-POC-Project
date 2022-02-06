# Step 1
FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

# Stage 2
# FROM nginx:1.17.1-alpine
# COPY --from=build-step /app/build /usr/share/nginx/html