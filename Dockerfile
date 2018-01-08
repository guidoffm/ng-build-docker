FROM stefanscherer/node-windows:nanoserver as builder

ARG HTTP_PROXY=""
ARG HTTPS_PROXY=""
ENV HTTP_PROXY=$HTTP_PROXY
ENV HTTPS_PROXY=$HTTPS_PROXY

COPY . .

RUN npm i

FROM stefanscherer/node-windows:nanoserver
