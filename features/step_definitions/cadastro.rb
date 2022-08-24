Dado('que esteja na página de autenticação') do
    @authentication_page = Pages::Authentication.new
    @authentication_page.load
end

Quando('inserir um email {string}') do |email|
    @authentication_page = Pages::Authentication.new
    $contador += 1
    if $contador == 3
        email = $user_email
    end
    @authentication_page.registration.input_email.set email
    @authentication_page.registration.btn_create_account.click
end

Dado('que insira um e-mail válido') do
    @authentication_page = Pages::Authentication.new
    @authentication_page.registration.input_email.set Factory::Dynamic.user_for_registering[:email]
end

Dado('clique em prosseguir com cadastro') do
    @authentication_page.registration.btn_create_account.click
end

Quando('for preenchido os campos {string} {string} {string} {string} {string} {string} {string}') do |name, lastname, password, address, city, postalCode, telephone|
    @authentication_page.set_field_entries(name,lastname,password,address,city,postalCode,telephone)
    @authentication_page.registration.btn_registration.click
end

Então('retornará a seguinte mensagem {string}') do |msg|
    expect(@authentication_page).to have_content msg
end