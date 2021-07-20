## Projeto
Desenvolvimento de uma aplicação para trazer informações do trello

## Executando o app de dentro de um container
`docker run --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:15 bash`

``` bash
yarn install
yarn dev
```

## Rodando Container Pgsql
`docker run -d -rm --name=db-apirest -p 5432:5432 -v $(pwd)/data:/var/lib/postgresql/data pgsql-apirest`

## Dockerizando a api

- Dockerfile.dev
```Dockerfile
FROM node:15-alpine

WORKDIR /app
COPY package*.json ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD ["yarn", "dev"]
```

```bash
docker build -t api-rest -f Dockerfile.dev .
```

## Pg Admin

```bash
docker run --name pgadmin -p 15432:80 -e PGADMIN_DEFAULT_EMAIL=leonardoviana00@hotmail.com -e PGADMIN_DEFAULT_PASSWORD=Info.123 -d dpage/pgadmin4
```

- URL: http://localhost:15432
