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

#### Links Uteis

[Documentação Biblioteca Request](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#Get%20File%20For%20Streaming%20Upload)

