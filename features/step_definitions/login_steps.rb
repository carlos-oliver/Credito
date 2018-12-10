  Dado("que estou na página inicial") do                                          
    @login_page.acessa   
  end                                                                             
                                                                                  
  Quando("informo meu nome {string} e e-mail {string}") do |nome, email|      
    @login_page.cadastro(nome, email)
    @login_page.cpf
  end     
 
  Quando("preencho os dados cadastrais {string} e {string}") do |data_n, salario|
    @login_page.dados(data_n, salario)
  end
  

                                                                                  
  Então("devo ver a seguinte mensagem {string}") do |mensagem|                      
    expect(@login_page.msg_ola).to have_content mensagem
  end                                                                               