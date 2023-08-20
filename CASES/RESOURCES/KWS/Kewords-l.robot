*** Settings ***
Resource    ../Main.robot


*** Keywords ***
Dado que o usuário esteja na tela inicial
    Wait Until Element Is Visible    ${AMZ.amazon}
Quando o usuário encontrar a barra de PESQUISA
    Click Element    ${PESQUISA.barra-pesquisa}

E digitar "nexgard até 10kg"
     Input Text    ${PESQUISA.barra-pesquisa}    Nexgard até 10kg
     
Então será redirecionado para tela com a lista de PESQUISA
    Click Button  ${PESQUISA.botao-pesquisa}
Dado que o usuário esteja na tela com lista de PESQUISA
    #pesquisar na amazon
    Wait Until Element Is Visible    ${PESQUISA.tela-pesquisa}
Quando o usuário encontrar o produto desejado
    Wait Until Element Is Visible    ${produto}
E clicar para visualizar 
    Click Element    ${produto}
E adicionar ao carrinho
    Wait Until Element Is Visible    ${CARRINHO.ADC-carrinho}    15
    Click Button    ${CARRINHO.ADC-carrinho}
    Wait Until Element Is Visible    ${CARRINHO.resultado-carrinho}    15
    Wait Until Element Is Visible    ${CARRINHO.IR-carrinho}
    Click Element    ${CARRINHO.IR-carrinho}
Então será redirecionado para a tela de carrinho
    Wait Until Element Is Visible    ${CARRINHO.LISTA-carrinho}

Dado que o usuário esteja na tela inicial do site
     Wait Until Element Is Visible    ${FAZER-login}
Quando o usuário clicar no "faça seu login"
    Click Element                    ${FAZER-login}
E achar o criar conta
    Wait Until Element Is Visible    ${AMZ.criarconta}
    Click Element                     ${AMZ.criarconta}
Então será redirecionado para o formulário de cadastro de conta
    Wait Until Element Is Visible    ${AMZ.buttoncontinue}

Dado que o usuário esteja na tela de formulário do login
    Click Element    ${LOGIN.nomeinput}
Quando preencher os campos obrigatórios
    Input Text       ${LOGIN.nomeinput}            Testes Automação da Silva
    Click Element    ${Login.emailinput} 
    Input Text       ${Login.emailinput}           testesautomacaodasilva@gmail.com
    Click Element    ${LOGIN.senhainput}
    Input Password   ${LOGIN.senhainput}            Admin123#
    Click Element    ${LOGIN.confirmacaosenha}
    Input Password   ${LOGIN.confirmacaosenha}      Admin123#

E submeter o formulário
    Click Button     ${AMZ.buttoncontinue}
Então uma conta no site da Amazon será criada com sucesso
    Wait Until Element Is Visible    ${AMZ.amazon}

Dado que o usuário esteja na tela inicial do site da Amazon
    Wait Until Element Is Visible    ${AMZ.amazon}
Quando clicar no "faça seu login"
    Click Element                    ${FAZER-login}
    Wait Until Element Is Visible    ${LOGIN.efetuarlogin}
E digitar seu e-mail corretamente
    Click Element    ${LOGIN.digitaremail}
    Input Text       ${LOGIN.digitaremail}    testesautomacaodasilva@gmail.com
E submeter para próxima tela
    Click Element    ${LOGIN.efetuarlogin}
E digitar a senha corretamente
    Wait Until Element Is Visible    ${LOGIN.submeterlogin}
    Click Element                    ${LOGIN.digitarsenha}
    Input Password                   ${LOGIN.digitarsenha}    Admin123#
    Click Button                     ${LOGIN.submeterlogin}
Então será redirecionado para tela inicial com login efetuado
    Wait Until Element Is Visible    ${AMZ.amazon}
    