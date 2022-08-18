#language: pt

@regression
@login
Funcionalidade: Login via E-mail
    COMO um usuário do Ecommerce Automation Pratice  
    QUERO me autenticar na aplicação
    PARA realizar compras

    Contexto:
        Dado que esteja na página de autenticação

    @login_validate_only
    Cenário: Validar login do usuário
        Quando realizar login com email e senha válidos
        Então  deverá logar o usuário

    @login_validate
    Esquema do Cenário: Validar login do usuário
        Quando realizar login com "<email>" e "<password>"
        Então deverá retornar a "<msg>" 
        
        Exemplos:
        |email              |password  |msg                                                                                       |
        |                   |12345678  |An email address required.                                                                |
        |teste              |12345678  |Invalid email address.                                                                    |
        |teste@compass.com  |1234      |Invalid password.                                                                         |
        |teste@compass.com  |12345678  |Welcome to your account. Here you can manage all of your personal information and orders. |

    @login_forgot_password_with_valid_email
    Cenário: Validar recuperação de senha
        Quando realizar a recuperação de senha com um email válido
        Então devera aparecer a mensagem "A confirmation email has been sent to your address"
    
    @login_forgot_password
    Esquema do Cenário: Validar recuperação de senha
        Quando realizar a recuperação de senha com o "<email>"
        Então devera retornar a "<msg>"
    
        Exemplos:
        |email              |msg                                                                    |
        |                   |Invalid email address.                                                 |
        |teste@compass.tst  |There is no account registered for this email address.                 |
        |teste@compass.com  |A confirmation email has been sent to your address: teste@compass.com  |
