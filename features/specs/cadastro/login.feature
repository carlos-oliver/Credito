#language:pt

Funcionalidade: Cadastrar novo usuário
    Para que eu possa acessar o sistema devo realizar um cadastro
    informando meus dados pessoais


@login
Cenario: Cadastrar novo usuário
        Dado que estou na página inicial 
        Quando informo meu nome "Fernando Santos" e e-mail "Fernando@teste.com" 
        E preencho os dados cadastrais "01/01/1989" e "1000,00"
        |Ocupação|<Ocupação>|
        |Profissão|<Profissão>| 
        Então devo ver a seguinte mensagem "Olá Fernando, precisamos saber um pouco sobre você."

   Exemplos:                                                                                  
        |Assalariado|Desenhista|
        |Empresário|Piscicultor|
        |Estudante|Estudante|
