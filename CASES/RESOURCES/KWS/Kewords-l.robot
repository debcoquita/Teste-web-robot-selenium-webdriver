*** Settings ***
Resource    ../Main.robot


*** Keywords ***
Dado que o usuário esteja na tela inicial
    Wait Until Element Is Visible    ${AMZ.amazon}
Quando o usuário encontrar a barra de PESQUISA
    Click Element    ${barra-pesquisa}

E digitar "nexgard até 10kg"
     Input Text    ${barra-pesquisa}    Nexgard até 10kg
     
Então será redirecionado para tela com a lista de PESQUISA
    Click Button  ${botao-pesquisa}
Dado que o usuário esteja na tela com lista de PESQUISA
    #pesquisar na amazon 
    Wait Until Element Is Visible    ${tela-pesquisa}
Quando o usuário encontrar o produto desejado
    Wait Until Element Is Visible    ${produto}
E clicar para visualizar 
    Click Element    ${produto}
E adicionar ao carrinho
    Wait Until Element Is Visible    ${ADC-carrinho}    15
    Click Button    ${ADC-carrinho}
    Wait Until Element Is Visible    ${resultado-carrinho}    15
    Click Element    ${IR-carrinho}
Então será redirecionado para a tela de carrinho
    Wait Until Element Is Visible    ${LISTA-carrinho}
    