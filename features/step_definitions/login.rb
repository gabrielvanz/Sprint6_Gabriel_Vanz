Quando('realizar login com email e senha válidos') do                               
    @authentication_page = Pages::Authentication.new

    userEmail       = Factory::Static.static_data('user_for_login')['email']
    userPassword    = Factory::Static.static_data('user_for_login')['password']
    @authentication_page.set_user_configs(userEmail,userPassword)
end                                                                            
                                                                                
Então('deverá logar o usuário') do      
    @my_account = Pages::My_account.new                                                       
    expect(@my_account).to have_myAccount
end

Quando('realizar login com {string} e {string}') do |email, password|                              
    @authentication_page = Pages::Authentication.new
    @authentication_page.set_user_configs(email,password)
end                                                                                 

Então('deverá retornar a {string}') do |msg|
    @msg_allert = @authentication_page.login
    expect(@msg_allert).to have_content msg
end

Quando('realizar a recuperação de senha com um email válido') do
    @authentication_page.login.forgot_password.click
    userEmail       = Factory::Static.static_data('user_for_login')['email']
    @authentication_page.forgot_pass(userEmail)
end
  
Então('devera aparecer a mensagem {string}') do |msg|
    expect(@authentication_page).to have_content msg
end

Quando('realizar a recuperação de senha com o {string}') do |email|
    @authentication_page.login.forgot_password.click
    @authentication_page.forgot_pass(email)
end
  
Então('devera retornar a {string}') do |msg|
    expect(@authentication_page).to have_content msg
end

