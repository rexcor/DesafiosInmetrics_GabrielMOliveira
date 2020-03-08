#language: pt

Funcionalidade: Validar consulta em API
    Como usuário do sistema
    Quero realizar uma requisição de consulta na API
    Para validar o retorno do http code

    Cenário: Validar http code 200
        Dado que envio uma requisição GET para "https://reqres.in/api/users?page=2"
        Então o retorno do http code deve ser 200