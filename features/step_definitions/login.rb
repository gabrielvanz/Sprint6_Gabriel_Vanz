Quando('realizar login com {string} e {string}') do |email, password|                              
    @authentication_page = Pages::Authentication.new
    @authentication_page.set_user_configs(email,password)
end                                                                                 

Então('deverá retornar a {string}') do |msg|
    expect(@authentication_page.login).to have_content msg
end

Dado('o usuário tenha finalizado a compra pelo carrinho') do                 
    @cart_page = Pages::Cart.new
    @cart_page.load
    @cart_page.procced_to_checkout.click    
end                                                                          

Quando('for preenchido corretamento os dados de login') do                       
    @authentication_page = Pages::Authentication.new
    email = Factory::Static.static_data('user_for_login')['email']
    password = Factory::Static.static_data('user_for_login')['password']
    @authentication_page.set_user_configs(email,password)
end

Então('deverá avançar para a prossima etapa do Checkout') do                 
    @checkout_page = Pages::Checkout.new
    expect(@checkout_page).to have_content "YOUR DELIVERY ADDRESS"
end                                                                          

Quando('realizar a recuperação de senha com o {string}') do |email|
    @authentication_page.login.forgot_password.click
    @authentication_page.forgot_pass(email)
end
  
Então('deverá logar o usuário') do      
    @my_account = Pages::My_account.new                                                       
    expect(@my_account).to have_myAccount
end

