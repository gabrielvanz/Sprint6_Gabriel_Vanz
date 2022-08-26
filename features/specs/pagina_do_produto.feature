#language: pt

@pdp
Funcionalidade: Página do Produto
    SENDO um usuário do Ecommerce Automation Pratice 
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

    Contexto: Estar na página de um produto
        Dado que esteja na página de um produto existente

    @regression
    @pdp_change_color
    Cenário: Validar alteração de cor do produto na PDP
        Quando alterar a cor do produto
        Então deverá alterar a imagem apresentada na PDP

    @pdp_product_quantity
    @pdp_increase_product_quantity
    Cenário: Validar incremento de produtos na PDP
        Quando aumentar a quantidade do produto
        Então deverá alterar a quantidade exibida na PDP para "2"

    @pdp_product_quantity
    @pdp_decrease_product_quantity
    Cenário: Validar decremento de produtos na PDP
        Quando diminuir a quantidade do produto
        Então deverá alterar a quantidade exibida na PDP para "1"

    @pdp_change_size
    Cenário: Validar alteração do tamanho do produto na PDP
        Quando alterar o tamanho do produto
        Então deverá alterar o tamanho exibido na PDP

    @pdp_add_product_to_cart
    Cenário: Validar produto no carrinho adicionado pela PDP
        Quando adicionar o produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho com sucesso