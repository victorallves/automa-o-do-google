*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${navegador}                          chrome
${url}                                https://www.google.com
${texto_a_ser_buscado}                Bolt - Supercão - Filme 2008
${texto_esperado}                     Bolt - Supercão
${barra_de_pesquisa}                  name=q
${texto_do_primeiro_link}             Bolt - Supercão - Filme 2008
${tecla_enter}                        \\13
${verificar_area_de_resultados}       css:div#search
${verifica_se_existe_um_elemento_h3}  css:div#search h3

*** Keywords ***
Abrir navegador
    Open Browser     ${url}                      ${navegador}

Pesquisar no Google
    Input Text       ${barra_de_pesquisa}        ${texto_a_ser_buscado}
    Press Key        ${barra_de_pesquisa}        ${tecla_enter} 

Verificar resultados
    Wait Until Page Contains Element    ${verificar_area_de_resultados}
    Page Should Contain Element         ${verifica_se_existe_um_elemento_h3}

Clicar no primeiro link
    Click Link                          ${texto_do_primeiro_link}    

Verificar conteúdo
    Wait Until Page Contains            ${texto_esperado}       

fechar navegador
    Close Browser


*** Test Cases ***
1- Abrir navegador
    Abrir navegador            
    
2- Pesquisar no Google
    Pesquisar no Google

3- Verificar resultados
    Verificar resultados


4- Clicar no primeiro link
    Clicar no primeiro link


5- Verificar conteúdo
    Verificar conteúdo

6- fechar navegador
    fechar navegador