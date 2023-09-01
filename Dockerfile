FROM node:latest as build

WORKDIR /apps

RUN npm cache clean --force

COPY . .

RUN npm install

RUN npm run build

FROM nginx:latest

RUN rm -rf /usr/share/nginx/html

COPY --from=build /apps/dist/ /usr/share/nginx/html/

COPY /nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

EXPOSE 8081

EXPOSE 8082

ENTRYPOINT ["nginx", "-g", "daemon off;"]

