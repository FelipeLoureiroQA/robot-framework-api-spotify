# Testando a API do spotify com robot-framework
- Alguns exemplos em uma API real.

# Instruções de Instação para API, E2E e gerenciadores 

1. [Instalação Python](https://python.org.br/instalacao-linux/?_gl=1*3344ou*_ga*MTUyMDUxOTg2NS4xNjU0MjYwMDAw*_ga_37GXT4VGQK*MTY1NzYzMjAzMy4zNC4xLjE2NTc2MzM4MDEuMA..)
2. [Gerenciador de pacotes do python](https://pypi.org/project/pip/)
3. [Robotframework Requests pra testes de API](https://github.com/MarketSquare/robotframework-requests#readme)
4. [Robot framework](https://robotframework.org/?tab=1#getting-started)
5. [Biblioteca Browser](https://github.com/MarketSquare/robotframework-browser)
6. [Instalação de gerenciador de pacotes e NodeJS (Para E2E)](https://nodejs.org/en/download/package-manager/)

Alternativa de instalação de pip: sudo pip3 install robotframework
Caso ocorra algum problema na biblioteca faker: pip install Faker

# Estrutura de Pastas 

**resources ou src** Váriaveis globalmente utilizadas como url,tokens etc

**routes ou services:** Onde serão encapsuladas as keywords

**factories ou data:** Onde fica as massas de testes em json, yml ou classes

**tests:** Onde ficam os asserts e são chamadas as Keywords

**tests/reports:** Onde fica os relatórios gerados quando utiliza robot -d

# Como Rodar o Robot
#### Quando estiver na mesma pasta do teste
` robot example.robot`
   
#### Caso esteja fora da pasta
`robot path/to/example.robot`

#### Rodar dentro de uma pasta especifica (recomendado)

robot -d ./reports ContaPF.robot

# Algumas formas pra validar o response
#### Acessar response e utilizar os dados
`${id_account}= Set Variable ${response.json()['id']}`

`Set Global Variable ${id_account} ${response.json()['id']}`

#### Outros Comandos
`robot --loglevel debug Documents.robot`
`/VindiRobot/API/tests/Singn In$ pabot ContaVerificada.robot'`

#### Compara conteudo igual request (payload)/response
`Should Contain ${payload["name"]} ${response.json()["name"]}`

#### Confirma se conteudo retorna false
`Should Not Be True ${response.json()["auto_withdraw"]}`

#### Confirma se conteudo retorna numero inteiro
`Should Be True isinstance(${response.json()["id"]}, int)`

`${is_int}= Evaluate isinstance(${response.json()['id']}, int)`

#### Confirma se conteudo retorna numero maior que
`Should Be True ${response.json()['id']} > 1000`

#### Confirma se conteudo retorna uma string
`Should Be String ${response.json()['name']} `
  
`Should Be True        isinstance('${response.json()["name"]}', str)`

#### Confirma se um valor é null/none
`Should Be True ${response.json()["fantasy_name"]} == None`

#### Como saber o tipo do dado?
`${id_account}    Evaluate    type(${id_account})`

#### Links Uteis

[Documentação Biblioteca Request](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#Get%20File%20For%20Streaming%20Upload)

# Docker (Pra quem faz teste local)
- Esse do spotify não é necessário mas fica ai um tutorial extra;

#### Instalação 
https://docs.docker.com/engine/install/

#### Instalação de dependecias pelo docker file
docker build -t robot-framework:1.0 .

#### Rodar o docker
docker run robot-framework:1.0

docker run -it robot-framework:1.0 bash

#### Interagir com o terminal bash do docker

docker exec -iti bash

#### Listar containers

docker ps
docker ps -a

#### Desligar container

docker stop id_container