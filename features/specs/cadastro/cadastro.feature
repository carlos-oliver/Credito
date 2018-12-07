#language:pt

Funcionalidade: Editar Cadastro
    Para que eu possa manter meus dados atualizados
    Sendo um usuário previamente cadastrado
    Posso editar o meu cadastro


 @login @cadastro
Esquema do Cenario: Editar dados pessoais completo
        Quando completo o meu cadastro com "<Ocupação>" e "<Profissão>"
        Então vejo a seguinte mensagem de confirmação "<saida>"

    Exemplos:
      | Assalariado | Desenhista  |
      | Empresário  | Piscicultor |
      | Estudante   | Estudante   |   