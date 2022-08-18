#language: pt

@regression
@registration
Funcionalidade: Cadastro de usuários
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO realizar um cadastro
    PARA logar na aplicação
    
    Contexto:
        Dado que esteja na página de autenticação
        E insira um e-mail válido e clique em prosseguir com cadastro

    @registration_validate_only
    Cenário: Validar cadastro do usuário
        Quando for preenchido todos os campos necessários
        E clicar em register
        Então o usuário será cadastrado

    @registration_validate
    Esquema do Cenário: Validar cadastro do usuário
        Quando for preenchido os campos "<name>" "<lastname>" "<password>" "<address>" "<city>" "<postalCode>" "<telephone>"
        Então retornará a seguinte mensagem "<msg>"
        Exemplos:
        |name     |lastname   |password   |address   |city    |postalCode     |telephone       |msg                                                                                        |
        |         |Vanz       |123456789  |ABC       |ABC     |12345          |(54)984000000   |firstname is required.                                                                     |               
        |123      |Vanz       |123456789  |ABC       |ABC     |12345          |(54)984000000   |firstname is invalid.                                                                      |
        |Gabriel  |           |123456789  |ABC       |ABC     |12345          |(54)984000000   |lastname is required.                                                                      |
        |Gabriel  |123        |123456789  |ABC       |ABC     |12345          |(54)984000000   |lastname is invalid.                                                                       |
        |Gabriel  |Vanz       |           |ABC       |ABC     |12345          |(54)984000000   |passwd is required.                                                                        |
        |Gabriel  |Vanz       |123456789  |          |ABC     |12345          |(54)984000000   |address1 is required.                                                                      |
        |Gabriel  |Vanz       |123456789  |ABC       |ABC     |               |(54)984000000   |The Zip/Postal code you've entered is invalid. It must follow this format: 00000           |         
        |Gabriel  |Vanz       |123456789  |ABC       |ABC     |12345          |                |You must register at least one phone number.                                               |
        |Gabriel  |Vanz       |123456789  |ABC       |ABC     |12345          |(54)984000000   |Welcome to your account. Here you can manage all of your personal information and orders.  |
      