

class LoginPage
  include Capybara::DSL

  def go
    visit "https://phptravels.net/admin"
  end

  # Metodo de login com usuário e senha
  def with(email, senha)
    fill_in "email", with: email
    fill_in "password", with: senha

    click_button "Login"
  end
end
