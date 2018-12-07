class LoginAuto
    include Capybara::DSL
    
    def logar(nome, email)
        visit 'https://demo.bompracredito.com.br/emprestimo-pessoal/'
        click_on 'btnTwoThousand'
        click_on 'btnTwelveTerm'
        find('#name').set nome
        find('#email').set email
        click_on 'btnContinue'
    end 
end