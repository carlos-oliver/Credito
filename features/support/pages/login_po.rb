class LoginPage
    include Capybara::DSL
    def acessa
      visit '/emprestimo-pessoal/'
    end
    
    def cadastro(nome, email)
      click_on 'btnTwoThousand'
      click_on 'btnTwelveTerm'
      find('#name').set nome
      find('#email').set email
      click_on 'btnContinue'
    end

    def msg_ola
      find('.main-area')
    end    
end