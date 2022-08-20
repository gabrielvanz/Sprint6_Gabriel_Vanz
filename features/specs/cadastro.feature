#language: pt

@regression
@registration
Funcionalidade: Cadastro de usuários
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO realizar um cadastro
    PARA logar na aplicação
    
    Contexto:
        Dado que esteja na página de autenticação
        

    @registration_email_validate
    Esquema do Cenário: Validar email do usuário
        Quando inserir um email "<email>"
        Então deverá retornar a "<msg>"
        Exemplos:
        |email                    |msg                                                               |
        |                         |Invalid email address.                                            |
        |teste@compass.com        |An account using this email address has already been registered.  |
        |Dynamic e-mail by Faker  |YOUR PERSONAL INFORMATION                                         |


    @registration_validate
    Esquema do Cenário: Validar cadastro do usuário
        Dado que insira um e-mail válido 
        E clique em prosseguir com cadastro
        Quando for preenchido os campos "<name>" "<lastname>" "<password>" "<address>" "<city>" "<postalCode>" "<telephone>"
        Então retornará a seguinte mensagem "<msg>"
        Exemplos:
        |name     |lastname   |password   |address   |city    |postalCode     |telephone       |msg                                                                                        |        
        |123      |Vanz       |123456789  |ABC       |ABC     |12345          |(54)984000000   |firstname is invalid.                                                                      |
        |Gabriel  |123        |123456789  |ABC       |ABC     |12345          |(54)984000000   |lastname is invalid.                                                                       |
        |Gabriel  |Vanz       |           |ABC       |ABC     |12345          |(54)984000000   |passwd is required.                                                                        |
        |Gabriel  |Vanz       |123456789  |          |ABC     |12345          |(54)984000000   |address1 is required.                                                                      |
        |Gabriel  |Vanz       |123456789  |ABC       |ABC     |12345          |                |You must register at least one phone number.                                               |
        |Gabriel  |Vanz       |123456789  |ABC       |ABC     |12345          |(54)984000000   |Welcome to your account. Here you can manage all of your personal information and orders.  |
      