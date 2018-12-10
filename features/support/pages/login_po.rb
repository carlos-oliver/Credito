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

  def dados(data_nasc, salario, ocupacao, profissao)
    find('input[formcontrolname=dateOfBirth]').set data_nasc
    find('input[formcontrolname=monthlyGrossIncome]').set salario
    click_on '.ng-untouched ng-pristine radio-btn-active radio-btn ng-valid[class=Masculino]' 
    find('#borrower.maritalStatus')
    find('select[name="jobType[Selecione]"').find(:xpath, 'option['+ ocupacao +']').select_option
    find('select[name="profession[Selecione]"').find(:xpath, 'option['+ profissao +']').select_option  
    find('select[name="educationLevel[Selecione]"').find(:xpath, 'option['+ Superior Completo +']').select_option  
    find('select[name="bankNumber[Selecione]"').find(:xpath, 'option['+  Bradesco +']').select_option
    click_on 'hasCheckbook' 
    click_on 'hasNegativeCreditRecord'
    click_on 'hasProperty'
    click_on 'hasVehicle'
    click_on 'CONTINUAR'   
  end
  
end
