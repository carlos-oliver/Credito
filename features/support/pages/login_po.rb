class LoginPage
  require 'cpf_cnpj'
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

  def cpf
    cpf = CPF.generate
    find('input[formcontrolname=cpf]').set cpf
  end

  def dados(data_nasc, salario)
    find('input[formcontrolname=dateOfBirth]').set data_nasc
    find('input[formcontrolname=monthlyGrossIncome]').set salario
    click_on '.ng-untouched ng-pristine radio-btn-active radio-btn ng-valid[class=Masculino]'    
  end
  
end
