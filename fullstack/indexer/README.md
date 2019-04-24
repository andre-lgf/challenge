# Indexador de perfis

## Descrição

Usando Ruby on Rails, gostariamos que você criasse uma ferramenta de busca de perfis.

### Requisitos

Deve-se haver uma página para cadastrar um `nome` e o `endereço dá página do twitter` desse novo membro. Exemplo:

* Nome: `Fretadão`
* Endereço web Twitter: `https://twitter.com/usefretadao`

Quando o cadastro de um novo membro for realizado, então através de um webscrapper deve-se recuperar e armazenar da página do Twitter as informações de `nome de usuário do Twitter` e `descrição` (situados ao lado esquerdo da página).

Tais como:

* Nome de usuário do Twitter. (`ProfileHeaderCard-screenname u-inlineBlock u-dir` - Exemplo de classe HTML para Webscrapping)
* Descrição sobre o usuário do Twitter. (`ProfileHeaderCard-bio u-dir` - - Exemplo de classe HTML para Webscrapping)

Exemplo:

![Informações Twitter](https://i.postimg.cc/YqcpWVkx/Screen-Shot-2019-04-24-at-11-44-09.png)

* Nome de usuário do Twitter: `usefretadao`
* Nome de usuário do Twitter: `Plataforma que possibilita pessoas a encontrar e contratar o transporte mais adequado para seu dia-a-dia. 🚍`

Outro detalhe no cadastro, a url do Twitter deverá ser armazenada encurtada, por exemplo, http://goo.gl.

After the member has been added, I can define their friendships with other existing members. Friendships are bi-directional i.e. If David is a friend of Oliver, Oliver is always a friend of David as well.

A página principal do sistema (home) deverá exibir um campo de busca e que ao ser preenchido com qualquer informação que poderá condizer com o `nome do membro`, `usuário do Twitter` ou `descrição armazenada do Twitter`, então deverá buscar membros e exibir em uma lista, contendo, nome e a url encurtada do perfil do Twitter com botões para editar/visualizar o registro.

Acessando o cadastro do membro, a página deverá exibir o `nome`, `url encurtada` do perfil do Twitter, o `nome de usuário do Twitter` e a `descrição recuperada da página do Twitter`. Além disso botões para editar/remover o registro.

## Considerações

Estamos avaliando uma série de coisas, que incluem o aspecto de design da sua solução, mas, na maioria das vezes, estamos procurando boas práticas de codificação, suas habilidades de programação orientada a objetos e seus conhecimentos no desenvolvimento fullstack, exemplo: Ruby, Rails, CSS (ou SASS), HTML (ou ERB ou HAML), JavaScript.

Voce está livre para definir a melhor arquitetura e tecnologias para solucionar este desafio, mas não se esqueça de contar sua motivação no
arquivo README que deve acompanhar sua solução, junto com os detalhes de como executar seu programa. 

Documentação e testes são avaliados também ;)

Bom desafio!
