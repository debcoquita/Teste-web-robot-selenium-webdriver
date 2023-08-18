*** Settings ***
Resource    ../Main.robot
Documentation    classe de variáveis do teste amazon


*** Variables ***
&{AMZ}    
...    amazon= xpath://a[contains(.,'.com.br')]
${produto}    xpath://span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'NexGard Antipulgas e Carrapatos para Cães de 4,1 a 10kg, 1 tablete')]
${barra-pesquisa}    xpath://input[contains(@type,'text')]
${botao-pesquisa}    xpath://input[contains(@type,'submit')]
${tela-pesquisa}     xpath://span[@class='a-size-medium-plus a-color-base a-text-bold'][contains(.,'Resultados')]
${ADC-carrinho}      xpath://input[contains(@name,'submit.add-to-cart')]
${resultado-carrinho}    xpath://span[@class='a-size-medium a-color-base a-text-bold'][contains(.,'Subtotal do carrinho:')]
${IR-carrinho}        xpath://input[contains(@name,'submit.add-to-cart')]
${LISTA-carrinho}    xpath://h1[contains(.,'Carrinho de compras')]