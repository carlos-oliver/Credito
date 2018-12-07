  Dado("que estou na página inicial") do                                          
    @login_page.acessa   
  end                                                                             
                                                                                  
  Quando("informo meu nome {string} e e-mail {string}") do |nome, email|      
    @login_page.cadastro(nome, email)
  end                                                                             
                                                                                  
  Então("devo ver a seguinte mensagem {string}") do |mensagem|                      
    expect(@login_page.msg_ola).to have_content mensagem
  end                                                                             