Before do
    @login_page = LoginPage.new
    @Login_auto = LoginAuto.new
    @Completar_cadastro = CompletarCadastro.new
end


Before('@login') do
  @usuario = { nome: 'Fernando Santos', email: 'Fernando@teste.com'}
  @Login_auto.logar(@usuario[:nome], @usuario[:email])
end