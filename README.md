# Desafio Clean Architecture

Este repositório se trata do desafio **Clean Architecture**, da Pós Graduação **Go Expert / FullCycle**.

## Escopo do Desafio

Criar o usecase de listagem das orders.
Esta listagem precisa ser feita com:
- Endpoint REST (GET /order)
- Service ListOrders com GRPC
- Query ListOrders GraphQL
Não esqueça de criar as migrações necessárias e o arquivo api.http com a request para criar e listar as orders.
Para a criação do banco de dados, utilize o Docker (Dockerfile / docker-compose.yaml), com isso ao rodar o comando docker compose up tudo deverá subir, preparando o banco de dados.
Inclua um README.md com os passos a serem executados no desafio e a porta em que a aplicação deverá responder em cada serviço.

## Passos para executar o projeto

1. Suba os containers Docker e inicie a aplicação rodando na raiz do projeto o comando:
`docker-compose up -d`

## Portas dos Serviços

- HTTP (web server): 8000
- gRPC: 50051
- GraphQL: 8080

## Requisições via HTTP (para testes)

1. Utilize o VS Code e instale a extensão REST Client nele

2. Acesse o arquivo situado em `api/order.http` e clique em `Send request` na requisição que desejar testar

## Requisições via gRPC (para testes)

1. Instale o grpcurl:
`brew install grpcurl`

2. Para listar as orders, use o comando:
`grpcurl -plaintext -d '{}' localhost:50051 pb.OrderService/ListOrders`

3. Para cadastrar uma order, use o comando:
`grpcurl -plaintext -d '{"id": "order123", "price": 100.0, "tax": 10.0}' localhost:50051 pb.OrderService/CreateOrder`

## Requisições via GraphQL (para testes)

1. Acesse o GraphQL playground no navegador pelo endereço:
`http://localhost:8080`

2. Para listar as Orders, utilize a query abaixo e clique no botão de Play:
`{
  listOrders {
    id
    Price
    Tax
    FinalPrice
  }
}`

3. Para cadastrar uma Order, utilize a mutation abaixo e clique no botão de Play:
`mutation {
  createOrder(input: {id: "order33", Price: 300, Tax: 10}) {
    id
    Price
    Tax
    FinalPrice
  }
}`