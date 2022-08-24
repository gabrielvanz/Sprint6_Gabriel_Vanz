#language: pt

@regression
@product_showcase

Funcionalidade: Vitrine de Produtos
    SENDO um usuário do Ecommerce Automation Pratice 
    QUERO poder personalizar os produtos que irei comprar pelo modal na vitrine do produto
    PARA ter uma melhor experiência de compra

    Contexto: Estar na vitrine dos produtos
    Dado que esteja na vitrine de produtos

    @product_showcase_add_to_cart
    Cenário: Adicionar produto da vitrine ao carrinho
        Quando adicionar produto da vitrine ao carrinho
        Então o produto deverá ser adicionado ao carrinho com sucesso pela vitrine

