

class AddGuestPage
  include Capybara::DSL

  #Metodo para acessar a página de adicionar usuário guest
  def acessa
    click_link "Accounts"
    click_link "GuestCustomers"
    click_button "Add"
  end

  #Metodo para preenchimento do formulario
  def preenche(firstName, lastName, email, senha, mobileNumber, country, address1, address2)
    fill_in "fname", with: firstName
    fill_in "lname", with: lastName
    fill_in "email", with: email
    fill_in "password", with: senha
    fill_in "mobile", with: mobileNumber
    fill_in "password", with: senha
    find(".select2-container").click
    find(".select2-result-label", text: "Brazil").click
    fill_in "address1", with: address1
    fill_in "address2", with: address2
  end

  #Metodo para confirmar cadastro
  def confirma
    click_button "Submit"
  end
end
