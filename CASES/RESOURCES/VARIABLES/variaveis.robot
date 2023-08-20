*** Settings ***
Resource    ../Main.robot
Documentation    classe de variáveis do teste amazon


*** Variables ***
&{AMZ}    
...    amazon= xpath://a[contains(.,'.com.br')]
...    criarconta= xpath://a[contains(@class,'a-button-text')]
...    buttoncontinue= xpath://input[contains(@tabindex,'8')]

&{LOGIN}
...    nomeinput= xpath://input[@type='text'][contains(@id,'name')]
...    emailinput= xpath://input[@type='email'][contains(@id,'email')]
...    senhainput= xpath://input[contains(@placeholder,'Pelo menos 6 caracteres')]
...    confirmacaosenha= xpath://input[@type='password'][contains(@id,'check')]

${produto}    xpath://span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'NexGard Antipulgas e Carrapatos para Cães de 4,1 a 10kg, 1 tablete')]

&{PESQUISA}
...    barra-pesquisa= xpath://input[contains(@type,'text')]
...    botao-pesquisa= xpath://input[contains(@type,'submit')]
...    tela-pesquisa= xpath://span[@class='a-size-medium-plus a-color-base a-text-bold'][contains(.,'Resultados')]


&{CARRINHO}
...    ADC-carrinho= xpath://input[contains(@name,'submit.add-to-cart')]
...    resultado-carrinho= xpath://span[@class='a-size-medium a-color-base a-text-bold'][contains(.,'Subtotal do carrinho:')]
...    IR-carrinho= xpath://span[@aria-hidden='true'][contains(.,'Carrinho')]
...    LISTA-carrinho= xpath://h1[contains(.,'Carrinho de compras')]


${FAZER-login}        xpath://span[@class='nav-line-1 nav-progressive-content'][contains(.,'Olá, faça seu login')]