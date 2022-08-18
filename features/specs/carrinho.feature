#language: pt

@regression
@cart
Funcionalidade: Busca
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO poder personalizar os produtos que irei comprar no carrinho
    PARA poder finalizar minhas compras

    Contexto: 
        Dado que o produto tenha sido adicionado ao carrinho
    
    @cart_increase_product_quantity
    Cenário: Aumentar a quantidade do produto no carrinho
        Quando aumentar a quantidade do produto no carrinho
        Então deverá alterar a quantidade exibida no carrinho para "2"

    @cart_decrease_product_quantity
    Cenário: Diminuir a quantidade do produto no carrinho
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