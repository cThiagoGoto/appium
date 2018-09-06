Dado("que estou na tela de Login") do
  @pageLogin = LoginScreen.new
  raise "Atenção..nāo está na tela de Login" unless @pageLogin.verificaTelaLogin
end

Dado("digitei os dados de Login {string}") do |string|
  @pageLogin.digitarDados
end
  
Quando("tocar em ENTRAR") do
  @pageLogin.tocarEntrar
  #@pageLogin.tocarEntrar2
end
  
Então("devo estar logado no app Minha Conta") do
  raise "Atenção..nāo está logado" unless @pageLogin.verificarLogado
end