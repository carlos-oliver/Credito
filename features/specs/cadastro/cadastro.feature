#language:pt

Funcionalidade: Cadastrar novo usuário
    Para que eu possa acessar o sistema devo realizar um cadastro
    informando meus dados pessoais


@cadastro
Cenario: Cadastrar novo usuário
        Dado que estou na página inicial 
        Quando informo meu nome "Fernando" e e-mail "Fernando@teste.com" 
        Então devo ver a seguinte mensagem "Olá, Fernando"