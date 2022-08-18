Dado('que esteja na página de autenticação') do
    @authentication_page = Pages::Authentication.new
    @authentication_page.load
end

Dado('insira um e-mail válido') do
    @authentication_page = Pages::Authentication.new
    @authentication_page.registration.input_email.set $user_email
end

Dado('clique em prosseguir com cadastro') do
    @authentication_page.registration.btn_create_account.click
end

# Quando('for preenchido todos os campos necessários') do
#     userName      = Factory::Static.static_data('user_for_registration')['name']
#     userLastname  = Factory::Static.static_data('user_for_registration')['lastname']
#     userPass      = Factory::Static.static_data('user_for_registration')['password']
#     userAddress   = Factory::Static.static_data('user_for_registration')['address']
#     userCity      = Factory::Static.static_data('user_for_registration')['city']
#     userPostCode  = Factory::Static.static_data('user_for_registration')['postal_code']
#     userPhone     = Factory::Static.static_data('user_for_registration')['telephone']

#     @authentication_page.set_field_entries(userName,userLastname,userPass,userAddress,userCity,userPostCode,userPhone)
# end

# Quando('clicar em register') do                                              
#     @authentication_page.registration.btn_registration.click
# end

# Então('o usuário será cadastrado') do
#     @my_account = Pages::My_account.new
#     expect(@my_account).to have_myAccount
# end

Quando('for preenchido os campos {string} {string} {string} {string} {string} {string} {string}') do |name, lastname, password, address, city, postalCode, telephone|
    @authentication_page.set_field_entries(name,lastname,password,address,city,postalCode,telephone)
    @authentication_page.registration.btn_registration.click
end

Então('retornará a seguinte mensagem {string}') do |msg|
    expect(@authentication_page).to have_content msg
end