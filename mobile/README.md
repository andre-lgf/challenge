# Histórico e marcação de posições no Mapa

## Descrição

Usando as melhores práticas de desenvolvimento mobile, gostaríamos que você criasse um aplicativo que possibilita a seleção de pontos em um mapa e o armazenamento de tais posições para consulta histórica.

## Requisitos
### 1. Tela inicial com Mapa

Ao abrir o aplicativo, deve-se carregar a primeira tela com mapa, sinta-se a vontade para usar o SDK necessário para o carregamento do mapa, tais como Google, Here, Tomtom, Mapbox, etc...

Assim que o mapa carregar o mesmo pode estar centralizado na seguinte coordenada:

* Latitude: -23.5489
* Longitude: -46.6388

### 2. Seleção de posição no Mapa

Após o carregamento do mapa, no evento de click do mapa, deve-se inserir um pin/marker.

A cada novo evento de click no mapa, deve-se alterar o pin/marker do click anterior para o novo.

### 3. Armazenamento e listagem das posições

A cada evento de click no mapa, deve-se armazenar em uma lista as coordenadas (latitude/longitude) do ponto. 

Essas informações das coordenadas na lista devem ser persistidas e caso o aplicativo seja encerrado/aberto novamente, a lista deve carregar com as informações dos pontos que foram selecionados anteriormente.

Ao selecionar uma das coordenadas listadas o mapa deve exibir o pin/marker da coordenada selecionada, caso já haja um pin/marker exibido no mapa, então esse será alterado para o pin/marker da coordenada selecionada na lista.

### 4. Interface de Usuário
Esse é um desafio mobile, ele deve ser **funcional**, portanto não se preocupe se suas habilidades de design não forem 10/10 :sweat_smile:.

Entende-se como pin/marker um indicador que possa mostrar no mapa o ponto (latitude/longitude) selecionado no evento de click.

As interações necessárias são:

* A tela principal (inicial) do aplicativo deverá carregar o mapa centralizado em uma latitude e longitude (item 1).
* O evento de click no mapa deve capturar as coordenadas (latitude e longitude), exibir um pin/marker da posição onde ocorreu o click e armazenar as coordenadas em uma lista.
* As coordenadas devem ser armazenadas e mantidas em uma lista histórica a qual possibilita que o usuário possa selecionar a coordenada e a mesma seja exibida no mapa através de um pin/marker.

## Avaliação

Avaliaremos sua solução por completo, incluindo código, testes e documentação. Preste atenção nos seguintes pontos:

* Arquitetura geral da solução;
* Boas práticas de codificação;
* Técnicas e padrões de projeto;
* Testes;
* Documentação/README contendo:
  * Passo a passo para o build;
  * Descrição da solução:
    * Técnicas utilizadas;
    * Algum ponto de melhoria? (Nenhum código é perfeito. Enxergar esses pontos também é importante)
    * Limitações.

Você está livre para definir a melhor arquitetura e tecnologias para solucionar este desafio, mas
não se esqueça de contar sua motivação no arquivo README que deve acompanhar sua solução.

Bom desafio!
