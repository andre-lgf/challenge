# Mars Rover

## Descrição

Estamos avaliando uma série de coisas, que incluem o aspecto de design da sua solução, mas, na maioria das vezes, estamos procurando boas práticas de codificação e suas habilidades de programação orientada a objetos. Também esperamos por testes automatizados.

## Problema

Um esquadrão de robôs deve ser desembarcado pela NASA em um planalto em Marte. Este planalto, que é curiosamente retangular, deve ser navegado pelos robôs para que suas câmeras integradas possam obter uma visão completa do terreno circundante para enviar de volta à Terra.

A posição e localização de um robô é representada por uma combinação de coordenadas X e Y e uma letra representando um dos quatro pontos cardeais da bússola. O planalto é dividido em uma grade para simplificar a navegação. Uma posição de exemplo pode ser 0, 0, N, o que significa que o robô está no canto inferior esquerdo e voltado para o norte.

Para controlar um robô, a NASA envia uma simples sequência de letras. As letras possíveis são 'L', 'R' e 'M'. 'L' e 'R' fazem o robô ​​girar 90 graus para a esquerda ou para a direita, respectivamente, sem se mover do ponto atual. 'M' significa avançar um ponto de grade e manter o mesmo rumo.

Suponha que o quadrado diretamente do norte de (x, y) seja (x, y + 1).

## Input

Para popular sua base de dados o sistema precisa expor um serviço (Webservice) que aceite a criação de um planalto, nesta mesma requisição o requisitante deverá informar um nome para este planalto. 

É importante que os planaltos sejam persistidos para evitar que a cada novo deploy todas as informações desapareçam. O formato do planalto é bastante simples, as coordenadas superior-direita do planalto, as coordenadas inferior-esquerda são consideradas como 0,0.

Por exemplo, a entrada 6 6, irá gerar o seguinte planalto para a navegação:

![Imagem apenas para exemplo](https://rsilva-web.s3-us-west-1.amazonaws.com/20170417142610-E119-1768_PO-170914105846_SL.jpg?v=20180704153907)

Com os planaltos carregados o requisitante irá navegar com seus robôs em um dado planalto, para isso ele passará o planalto duas informações para a navegação do robô, a primeira informação dá a posição do robô, a segunda informação é uma série de instruções que dizem ao robô como explorar o planalto, sua tarefa é criar este serviço também.

A posição é composta de dois inteiros e uma letra separada por espaços, correspondendo às coordenadas X e Y e a orientação do rover (Norte, Sul, Leste, Oeste).

Um exemplo de entrada seria, planalto `A`, posição `1 2 N`, navegação `LMLMLMLMM`; a resposta seria `1 3 N` (Norte)
Outro exemplo de entrada seria, planalto `A`, posição `3 3 E`, navegação `MMRMMRMRRM`; a resposta seria `5 1 E` (Leste)

## Considerações

Voce está livre para definir a melhor arquitetura e tecnologias para solucionar este desafio, mas não se esqueça de contar sua motivação no
arquivo README que deve acompanhar sua solução, junto com os detalhes de como executar seu programa. 

Documentação e testes são avaliados também ;)

Lembre-se de que iremos executar seu código com navegações bem mais complexas que o exemplo acima, por isso é importante pensar em requisitos não funcionais também!

Para o desenvolvimento desse sistema, nós solicitamos que você utilize a sua (ou as suas) linguagem de programação principal. Pode ser Java, JavaScript ou Ruby.

Para divulgar sua solução para nós, recomendamos que faça um pull request a partir deste repositório.

O prazo máximo para entrega é dia de 5 dias.

Bom desafio!
