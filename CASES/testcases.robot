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
Cenário 02: Adicionar ao carrinho
    [Tags]    PESQUISA
    Dado que o usuário esteja na tela com lista de PESQUISA
    Quando o usuário encontrar o produto desejado
    E clicar para visualizar
    E adicionar ao carrinho
    Então será redirecionado para a tela de carrinho
Cenário 03: Entrando no formulário de cadastro de login
    [Tags]    Criar    Login
    Dado que o usuário esteja na tela inicial do site
    Quando o usuário clicar no "faça seu login"
    E achar o criar conta
    Então será redirecionado para o formulário de cadastro de conta
Cenário 04: Preenchendo o formulário de cadastro e criando login
    [Tags]    criar    login
    Dado que o usuário esteja na tela de formulário do login
    Quando preencher os campos obrigatórios
    E submeter o formulário
    Então uma conta no site da Amazon será criada com sucesso
Cenário 05: Entrando com a conta do usuário testes Automação da Silva
    [Tags]    Entrando    conta
    Dado que o usuário esteja na tela inicial do site da Amazon
    Quando clicar no "faça seu login"
    E digitar seu e-mail corretamente
    E submeter para próxima tela
    E digitar a senha corretamente
    Então será redirecionado para tela inicial com login efetuado

