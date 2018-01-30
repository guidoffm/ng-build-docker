FROM stefanscherer/node-windows:nanoserver as builder

RUN npm config set registry=http://prosim2064.bku.db.de:4873

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN ["C:\\nodejs\\node.exe", "node_modules\\@angular\\cli\\bin\\ng", "build", "-prod" , "--aot"]

FROM microsoft/iis

WORKDIR /inetpub/wwwroot

RUN del /q *.*

COPY --from=builder /app/dist .

# ENTRYPOINT powershell
