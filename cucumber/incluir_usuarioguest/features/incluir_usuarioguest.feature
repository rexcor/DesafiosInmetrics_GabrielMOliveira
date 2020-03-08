#language: pt

Funcionalidade: Incluir usuário guest
    Para que eu possa gerenciar meus usuários guest
    Sendo administrador do sistema
    Posso incluir um user guest

    Contexto: Logar no sistema
        Dado que eu esteja na tela de adicionar guest

    Esquema do Cenario: Incluir usuário guest

        Quando eu insiro as informações de cadastro <firstName> <lastName> <email> <senha> <mobileNumber> <country> <address1> <address2>
        E confirmo o cadastro do usuário
        Então o usuário é cadastrado com sucesso
        
        Exemplos:
        | firstName | lastName   | email                       | senha      | mobileNumber | country   | address1        | address2            |
        | "Gabriel" | "Oliveira" | "gabolive@inmetrics.com.br" | "123teste" | 997075145    | "Brazil"  | "Rua. do teste" | "CasaAutomatizada"  |