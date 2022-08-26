#language: pt

@login
Funcionalidade: Login via E-mail
    COMO um usuário do Ecommerce Automation Pratice  
    QUERO me autenticar na aplicação
    PARA realizar compras

    @login_validate_home
    Esquema do Cenário: Validar login pela Home
        Dado que esteja na página de autenticação
        Quando realizar login com "<email>" e "<password>"
        Então deverá retornar a "<msg>" 
        
        Exemplos:
        |email              |password  |msg                                                                                       |
        |                   |12345678  |An email address required.                                                                |
        |teste              |12345678  |Invalid email address.                                                                    |
        |teste@compass.com  |1234      |Invalid password.                                                                         |
        |teste@compass.com  |12345678  |Welcome to your account. Here you can manage all of your personal information and orders. |

    @login_validate_checkout
    Cenário: Validar login pelo Checkout
        Dado que o produto tenha sido adicionado ao carrinho
        E o usuário tenha finalizado a compra pelo carrinho
        Quando for preenchido corretamento os dados de login
        Então deverá avançar para a prossima etapa do Checkout

    @login_forgot_password
    Esquema do Cenário: Validar a recuperação de senha
        Dado que esteja na página de autenticação
        Quando realizar a recuperação de senha com o "<email>"
        Então deverá retornar a "<msg>"
    
        Exemplos:
        |email              |msg                                                                    |
        |                   |Invalid email address.                                                 |
        |teste@compass.tst  |There is no account registered for this email address.                 |
        |teste@compass.com  |A confirmation email has been sent to your address: teste@compass.com  |
