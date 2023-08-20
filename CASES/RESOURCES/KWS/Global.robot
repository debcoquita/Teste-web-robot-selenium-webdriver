*** Settings ***
Resource    ../Main.robot

*** Variables ***
${URL}     https://www.amazon.com.br/?&tag=hydrbrabk-20&ref=pd_sl_7rwd1q78df_e&adgrpid=79547423725&hvpone=&hvptwo=&hvadid=591863875878&hvpos=&hvnetw=g&hvrand=17235302576629106834&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1031685&hvtargid=kwd-10573980&hydadcr=26346_11691057

*** Keywords ***
abrir navegador
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

pesquisar na amazon 
    Dado que o usuário esteja na tela inicial
    