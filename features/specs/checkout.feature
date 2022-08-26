#language: pt

@checkout
Funcionalidade: Checkout
    COMO um usuário do Ecommerce Automation Pratice  
    QUERO fazer o checkout de um produto no carrinho
    PARA realizar a compra

    Contexto:
        Dado que o usuário esteja logado
        E que o produto tenha sido adicionado ao carrinho
        Quando fazer checkout do produto pelo carrinho

    @regression
    @checkout_validate
    Cenário: Validar Checkout
        Quando marcar os termos de serviço
        E prosseguir com a finalização da compra
        E selecionar o meio de pagamento
        E confirmar o pagamento
        Então deverá finalizar o checkout com sucesso

    @checkout_payment_validate
    Cenário: Validar a forma de pagamento
        Quando marcar os termos de serviço
        E prosseguir com a finalização da compra
        E selecionar o meio de pagamento
        Então irá avançar para a finalização da compra
    
    @checkout_terms_service
    Cenário: Validar os termos de serviço do checkout
        Quando marcar os termos de serviço
        E prosseguir com a finalização da compra
        Então deverá avançar para a página de pagamento
        
        