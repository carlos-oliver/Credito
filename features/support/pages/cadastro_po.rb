class LoginPage
    include Capybara::DSL
    def acessa
      visit '/emprestimo-pessoal/'
    end
    
    def cadastro(nome, email)
      find('#btnTwoThousand').set nome
      find('#email').set email
      click_on x'btnContinue'
    end
end