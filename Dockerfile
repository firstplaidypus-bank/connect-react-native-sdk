FROM node:slim as build
WORKDIR /home/code
RUN chmod -R 777 /home/code
COPY . ./
RUN cd /home/code
RUN npm pack


FROM node:slim
COPY --from=build /home/code/*.tgz app.tgz
