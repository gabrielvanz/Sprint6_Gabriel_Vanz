#language: pt

@comparation
Funcionalidade: Comparação
    COMO um usuário do Ecommerce Automation Pratice  
    QUERO fazer a comparação de produtos
    PARA escolher o que vou comprar

    Contexto:
    Dado que esteja na vitrine de produtos
    Quando adicionar um produto para comparar
    
    @comparation_add
    Cenário: Validar comparação de produtos na vitrine
        Quando entrar na página de comparação
        Então deverá exibir o produto com seus valores

    @comparation_remove
    Cenário: Validar remoção do produto na página de comparação
        Quando entrar na página de comparação
        E remover o produto da comparação
        Então Deverá exibir a mensagem "There are no products selected for comparison."