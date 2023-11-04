*** Settings ***
Resource    ../Main.robot

*** Variables ***
${URL}     https://www.amazon.com.br/
*** Keywords ***
abrir navegador
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

pesquisar na amazon 
    Dado que o usuário esteja na tela inicial
    