*** Settings ***
Documentation    tudo que o meu teste precisa
#Para pegar a todos os arquivos usa '../'
Resource    ../RESOURCES/KWS/Global.robot
Resource    ../RESOURCES/KWS/Kewords-l.robot
Resource    ../RESOURCES/KWS/PAGES/pages.robot
Resource    ../testcases.robot
Resource    ../RESOURCES/VARIABLES/variaveis.robot
#Resource    '../RESOURCE/VARIABLES/'

Library    SeleniumLibrary
Library    Collections