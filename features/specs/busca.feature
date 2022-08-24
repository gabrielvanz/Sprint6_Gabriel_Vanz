#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

Contexto: 
    Dado que esteja na home

@search_for_product
Cenário: Validação da busca por produto existente
    Quando realizar uma busca por um produto existente
    Então deverão ser retornados resultados na busca

@search_for_different_products
Esquema do Cenário: Validar busca por produtos existentes
    Quando buscar pelo produto "<produto>"
    Então deverão ser retornados resultados na busca

    Exemplos:
    |    produto       | 
    |Blouses           |
    |Dresses           |
    |T-shirts          |
