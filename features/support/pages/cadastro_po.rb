class LoginPage
    include Capybara::DSL
    def acessa
      visit '/emprestimo-pessoal/'
    end  
  end