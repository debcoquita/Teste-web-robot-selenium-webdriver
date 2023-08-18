*** Settings ***
Resource    ../CASES/RESOURCES/KWS/Global.robot
Resource    ../CASES/RESOURCES/Main.robot

Test Setup    abrir navegador

*** Test Cases ***
Cenário 01: Testando o site da amazon
    [Tags]    PESQUISA
    Dado que o usuário esteja na tela inicial
    Quando o usuário encontrar a barra de PESQUISA
    E digitar "nexgard até 10kg"
    Então será redirecionado para tela com a lista de PESQUISA

#    [Tags]    PESQUISA
    Dado que o usuário esteja na tela com lista de PESQUISA
    Quando o usuário encontrar o produto desejado
    E clicar para visualizar
    E adicionar ao carrinho
    Então será redirecionado para a tela de carrinho
#Cenário 03: Testando 
