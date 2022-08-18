<h1 align="center" style="color: green">CHALLENGE DA SPRINT 5</h1>

[![NPM](https://img.shields.io/npm/l/react)](https://github.com/gabrielvanz/RealityStone_Gabriel_Compass/blob/develop/LICENSE)

<h2>Sobre o projeto</h2>

> Este projeto é referente a Sprint 5 do Programa de Bolsas Automação de Testes front-end com Ruby, Compass, cujo seu propósito é aplicar o conhecimento e técnicas para a realização de BDD's e automações de testes no site <a href="http://automationpractice.com/">Automation Practice</a>

<h3 name="topo">Automações dos testes</h3>

>As automações dos testes do fluxo de compra, são elas a busca, cadastro, login, finalização da compra, página do produto, vitrine de produtos e o carrinho, que estão listadas abaixo.

```bash
@search
  -> @search_for_product
  -> @search_for_different_products
  
@registration
  -> @registration_validate_only
  -> @registration_validate

@login
  -> @login_validate_only
  -> @login_validate

@pdp
  -> @pdp_change_color
  -> @pdd_product_quantity
  -> @pdd_increase_product_quantity
  -> @pdd_decrease_product_quantity
  -> @pdd_change_size
  -> @pdd_add_product_to_cart

@product_showcase
  -> @product_showcase_add_to_cart

@cart
  -> @cart_increase_product_quantity
  -> @cart_decrease_product_quantity
  -> @cart_remove_product
  -> @cart_remove_product_modal

@checkout
```


<h2>Tecnologias utilizadas</h2>

<p align="center" color=""><a href="https://www.ruby-lang.org/pt/" title="Ruby"><img height="70" width="70" src="https://img.icons8.com/color/344/ruby-programming-language.png"></a>
<a href="https://rspec.info/" title="Rspec"><img height="70" width="70" src=https://github.com/ypek/teste-/raw/main/logo%20rspec.png></a>
<a href="https://cucumber.io/" title="Cucumber"> <img height="70" width="70" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/cucumber/cucumber-plain.svg"></a>
<a href="https://github.com/site-prism" title="Site Prism"> <img height="70" width="70" src="https://avatars.githubusercontent.com/u/51700553?s=200&v=4"></a>
<a href="https://github.com/teamcapybara" title="Capybara"> <img height="70" width="70" src="https://avatars.githubusercontent.com/u/23465623?s=200&v=4"></a>
<a href="https://www.selenium.dev/" title="Selenium"> <img height="70" width="70" src="https://avatars0.githubusercontent.com/u/983927?v=3&s=400"></a>
<a href="https://www.xmind.app/" title="X-Mind"> <img height="70" width="70" src="https://i.pinimg.com/280x280_RS/a8/59/73/a859733a7ab0bf26117fc73cb27b7112.jpg"></a>
<a href="https://code.visualstudio.com/" title="Visual Studio Code"><img height="70" width="70" src="https://img.icons8.com/color/344/visual-studio-code-2019.png"></a>
<a href="https://git-scm.com/" title="Git"><img height="70" width="70" src="https://camo.githubusercontent.com/fbfcb9e3dc648adc93bef37c718db16c52f617ad055a26de6dc3c21865c3321d/68747470733a2f2f7777772e766563746f726c6f676f2e7a6f6e652f6c6f676f732f6769742d73636d2f6769742d73636d2d69636f6e2e737667"> </a>
<a href="https://github.com/" title="GitHub"> <img height="70" width="70" src="https://cdn-icons-png.flaticon.com/512/25/25231.png"></a></p> 



<h2>Pré-requisitos</h2>

```bash
• Git                 ->   2.0.1 ou superior
• Ruby                ->   3.1.2p20 ou superior
• Rspec               ->   3.11 ou superior
• Cucumber            ->   8.0.0 ou superior
• Capybara            ->   3.37.1 ou superior
• Site Prism          ->   3.7.3 ou superior
• Selenium Webdriver  ->   3.142
• Google Chrome       ->   104.0.5112.81
• Chrome Driver       ->   104.0.5112.79
```
<br>

<h2>Como clonar o repositório com Git</h2>
1- Abra o Git Bash

2- Escolha local em que deseja ter o diretório clonado com seguinte comando

```bash
$ git init
```

3- Digite ```git clone``` e cole a URL deste repositório

```bash
$ git clone https://github.com/gabrielvanz/Sprint5_Gabriel_Vanz.git
```

4- Pressione **Enter** para criar o seu clone local

<br>

<h2>Instalação das dependências</h2>

1- Abra a pasta em que foi clonado o repositório

2- Digite o comando para instalar as dependências

```bash
bundle install
```
3- Pressione **Enter**

<br>

<h2>Para executar todas as automações de testes do e-commerce Automation Practice</h2>

1- Abra o prompt de comando em que foi clonado o repositório

2- Digite o comando para executar os testes

```bash
cucumber -p default
```

3- Pressione **Enter** para executar a automação

4- Após a execução das automações, será gerado um report dentro da pasta ```reports```

<br>

<h2>Para executar as automações de testes específicos do e-commerce Automation Practice</h2>

1- Abra o prompt de comando em que foi clonado o repositório

2- Digite o comando substituindo ```nome``` pela automação escolhida

```bash
cucumber -p default -t"nome"
```

3- Pressione **Enter** para executar a automação

<a href="#topo"><h5>Clicando aqui, voce verá o `nome` de todas as automações existentes</h5></a>

> Para executar todos os cenários de uma automação, o **nome** deverá conter a automação requisitada, como abaixo<br>
> ```cucumber -p default -t@search```<br>
> Para executar cenários expecíficos de uma automação, o **nome** deverá conter a automação requisitada mais o complemento, como abaixo<br>
> ```cucumber -p default -t@search_for_product```

4- Após a execução das automações, será gerado um report dentro da pasta ```reports```

<br>

<h2>Agradecimentos</h2>

<p>Queria agradecer aos colegas Bruno Silveira, Leonardo Moresco e Rhodrigo Lopes do programa de bolsas de Automação Web, que me ajudaram no desenvolvimento desse projeto.</p>
  
<br>

<h2>Autor</h2>

<p>Gabriel Vanz</p>


-GitHub - https://github.com/gabrielvanz

-LinkedIn - https://www.linkedin.com/in/gabrielvanz/

-E-mail - gabrivanz@hotmail.com
