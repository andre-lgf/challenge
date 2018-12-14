# Sitema de rotas

## Descrição

Estamos avaliando uma série de coisas, que incluem o aspecto de design da sua solução, mas, na maioria das vezes, estamos procurando boas práticas de codificação e suas habilidades de programação orientada a objetos. Também esperamos por testes automatizados.

## Problema

O Fretadão está desenvolvendo um novo sistema de rotas e sua ajuda é muito importante neste momento. Sua tarefa será desenvolver o
novo sistema visando sempre o menor custo.

## Input

Para popular sua base de dados o sistema precisa expor um serviço (Webservice) que aceite o formato de malha logística (conforme exemplo abaixo), nesta mesma requisição o requisitante deverá informar um nome para este mapa. 

É importante que os mapas sejam persistidos para evitar que a cada novo deploy todas as informações desapareçam. O formato de malha logística é bastante simples, cada linha mostra uma rota: ponto de origem, ponto de destino e distância entre os pontos em quilômetros, separados por espaços:

A B 10

B D 15

A C 20

C D 30

B E 50

D E 30

Um exemplo de entrada seria, mapa `SP`, rotas `["A B 10", "B D 15", "A C 20", ...]`.

Com os mapas carregados o requisitante irá procurar o menor custo em seu trajeto, para isso ele deve informar o mapa, nome do ponto de
origem, nome do ponto de destino, autonomia do ônibus (km/l) e o valor do litro do combustivel, sua tarefa é criar este serviço também.

Um exemplo de entrada seria, mapa `SP`, origem `A`, destino `D`, autonomia `10`, valor do litro `2,50`; a resposta seria a rota `A B D` com custo de `6,25`.

## Considerações

Voce está livre para definir a melhor arquitetura e tecnologias para solucionar este desafio, mas não se esqueça de contar sua motivação no
arquivo README que deve acompanhar sua solução, junto com os detalhes de como executar seu programa. 

Documentação e testes são avaliados também ;) 

Lembre-se de que iremos executar seu código com malhas bem mais complexas que o exemplo acima, por isso é importante pensar em requisitos não funcionais também!

Para o desenvolvimento desse sistema, nós solicitamos que você utilize a sua (ou as suas) linguagem de programação principal. Pode ser Java, JavaScript ou Ruby.

O prazo máximo para entrega é dia de 5 dias, para divulgar sua solução para nós, recomendamos que um pull request seja aberto a partir deste repositório.

Bom desafio!
