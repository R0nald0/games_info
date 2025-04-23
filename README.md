# Play Games

## Sobre o Projeto
Projeto  desenvolvido com Flutter Web (Dart),listagem de jogos já lançados e á ser lançado,exibição de slide, e plataformas  


### Imagens do App
---
<img src="https://github.com/user-attachments/assets/57526efb-91d4-45c3-9275-935b7938ed54" height="450em">


### Estrutura do Projeto
 *  **web**/: Arquivos específicos para plataforma Web:
 *  **lib/**/: Possui a pasta app com lógica do aplicativo,estrutura base, telas, widgets,controllers,data,etc.
 *  **lib/app/core**/: Possui classes de acesso global do aplicativo.
 *  **lib/app/presentation**/: Possui a classes de controllers e page.
 *  **lib/app/data**: Possui model,repositório e remote para acesso a externo 


### Como Rodar 
<p>
 Pra rodar e testar, basta ter o Flutter instalado,necéssario uma API key do RAWG, que você pode obeter neste link <a href="https://rawg.io/apidocs">RAWG</a> ,clonar ou fazer um fork deste repositório,adicionar a API key em  <strong>lib/app/core/constants/constants.dart</strong> e subtituir o valor da constante API_KEY,ai é só executar com:
</p>

```
 flutter pub get
 flutter pub run
```

### Funcionalidades do App
---
* grid de imagens jogos.
* slider de fotos com imagens de jogos para lançãmento
* exibição de nome e votos do jogo
* responsividade

 ### Tecnologias utilizadas
 ---
 * Flutter Web ui
 * ChangeNotifier para Gerencimento de estado.
 * Provider para injecção de depêndencia 
 * Consumo de API com pakcge Dio:
 * Clean Architecture,
 * MVVM
 * Go_router para gerenciamento de rotas 

  vesão do Flutter da 3.27.1
  vesão do Dart da 3.6.0
  
  ![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)
  ![Badge em dart](http://img.shields.io/static/v1?label=LENGUAGE&message=%20DART&color=BLUEN&style=for-the-badge)
  ![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
  ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

