# study-go-with-docker-compose

### mandatory requirements
| requeriments |
|--------------|
| Go           |
| Docker       | 


- as soon as clone this repository, run the commands in sequence
```shell
make go-tidy
```

- start air configuration so I don't need to recompile every change
````shell
make air-init
````

- start configuration to simplify the way to handle tables
```shell
make create-migrations
```

- apos inserir os scripts do examples.sql
```shell
make migrate
```

- now i just run 
````shell
make docker-build 
make docker-up
````

- rotas 
```shell
curl -F "name=my-item" http://127.0.0.1:3000/items
curl http://127.0.0.1:3000/items
curl http://127.0.0.1:3000/
```