FROM golang:1.17 as base

# Crie outro estágio chamado "dev" que é baseado em nosso estágio "base" (para que tenhamos golang disponível para nós)
FROM base as dev

# Instale o binário aéreo para que possamos recarregar o código ao vivo quando salvarmos os arquivos
RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

# Execute o comando air no diretório onde nosso código ficará
WORKDIR /opt/app/api
CMD ["air"]
