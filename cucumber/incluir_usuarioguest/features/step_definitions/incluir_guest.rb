Dado("que eu esteja na tela de adicionar guest") do
  @login.go
  @login.with("admin@phptravels.com", "demoadmin")
  @add_guest_page.acessa
end

Quando("eu insiro as informações de cadastro {string} {string} {string} {string} {int} {string} {string} {string}") do |firstName, lastName, email, senha, mobileNumber, country, address1, address2|
  @add_guest_page.preenche(firstName, lastName, email, senha, mobileNumber, country, address1, address2)
end

Quando("confirmo o cadastro do usuário") do
  @add_guest_page.confirma
end

Então("o usuário é cadastrado com sucesso") do
  expect(page).to have_content "gabolive@inmetrics.com.br"
end
