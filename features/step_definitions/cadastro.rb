Dado("que eu visito o website Your Logo") do
    visit '/'
    @cadastro = CadastroPage.new
    @dados_pessoais = []
end
  
  Quando("eu insiro um email válido {string}, seleciono o radio {string}, nome {string}, sobrenome {string},") do |email, radio_title, nome, sobrenome|
    @dados_pessoais[0] = email
    @dados_pessoais[1] = radio_title
    @dados_pessoais[2] = nome
    @dados_pessoais[3] = sobrenome
  end
  
  Quando("insiro o email {string}, senha {string}, marco todos os checkbox e depois desmarco todos checkbox, meu nome {string}, meu sobrenome {string},") do |email2, senha, nome2, sobrenome2|
    @dados_pessoais[4] = email2
    @dados_pessoais[5] = senha
    @dados_pessoais[6] = nome2
    @dados_pessoais[7] = sobrenome2
  end
  
  Quando("insiro a compania {string}, endereço {string}, cidade {string}, cep {string}, país {string},") do |compania, endereco, cidade, cep, pais|
    @dados_pessoais[8] = compania
    @dados_pessoais[9] = endereco
    @dados_pessoais[10] = cidade
    @dados_pessoais[11] = cep
  end
  
  Quando("insiro informação adicional {string}, telefone {string}, celular {string}, endereço alternativo {string}") do |infoadicional, telefone, celular, emailadicional|
    @dados_pessoais[12] = infoadicional
    @dados_pessoais[13] = telefone
    @dados_pessoais[14] = celular
    @dados_pessoais[15] = emailadicional
  end
  
  Então("eu realizo o preenchimento de todos os campos") do
    @cadastro.cadastrar(@dados_pessoais)
    sleep(30)
   end