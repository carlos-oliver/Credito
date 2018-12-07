require "cpf_cnpj"
class Dados
  def cpf_
    number = CPF.generate
    puts number 
  end
end
###########################


obj = Dados.new
obj.cpf_
