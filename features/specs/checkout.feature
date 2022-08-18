#language: pt

@regression
@checkout
Funcionalidade: Checkout via carrinho
    COMO um usuário do Ecommerce Automation Pratice  
    QUERO fazer o checkout de um produto no carrinho
    PARA realizar a compra

    Contexto:
        Dado que o usuário esteja logado
        E que o produto tenha sido adicionado ao carrinho

    Cenário: 
        Quando fazer checkout do produto pelo carrinho
        E o termo de serviço estiver marcado
        E selecionar o meio de pagamento
        Então deverá finalizar o checkout com sucesso