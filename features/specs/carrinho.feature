#language: pt

@regression
@cart
Funcionalidade: Carrinho
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO poder personalizar os produtos que irei comprar no carrinho
    PARA poder finalizar minhas compras

    Contexto: 
        Dado que o produto tenha sido adicionado ao carrinho
    
    @cart_increase_product_quantity
    Cenário: Validar incremento de produtos na página do carrinho
        Quando aumentar a quantidade do produto no carrinho
        Então deverá alterar a quantidade exibida no carrinho

    @cart_decrease_product_quantity
    Cenário: Validar decremento de produtos na página do carrinho
        Quando diminuir a quantidade do produto no carrinho
        Então deverá remover o produto do carrinho
    
    @cart_remove_product
    Cenário: Remover produto no carrinho pela página do carrinho
        Quando clicar na lixeira de um produto existente no carrinho
        Então deverá remover o produto do carrinho na página do carrinho
    
    @cart_remove_product_modal
    Cenário: Remover produto no carrinho pela modal do carrinho na home
        Quando clicar na lixeira de um produto existente no carrinho no modal do carrinho
        Então deverá remover o produto do modal do carrinho

    @cart_page_checkout_validate
    Cenário: Validar a finalização da compra pela página do carrinho
        Dado que esteja na página do carrinho
        Quando clicar em Proceed to checkout
        Então deverá avançar para a autenticação no checkout
    
    @cart_modal_checkout_validate
    Cenário: Validar a finalização da compra pela modal do carrinho
        Dado que esteja na home
        Quando clicar em checkout no modal do carrinho
        Então deverá avançar para a página do carrinho