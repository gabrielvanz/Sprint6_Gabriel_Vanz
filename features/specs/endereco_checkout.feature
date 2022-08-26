#language: pt

@regression
@address_checkout
Funcionalidade: Endereço no checkout
    COMO um usuário do Ecommerce Automation Pratice 
    QUERO poder alterar o meu endereço no checkout
    PARA poder receber as compras em minha casa

    Contexto: 
        Dado que o usuário esteja logado
        E que o produto tenha sido adicionado ao carrinho
        Quando fazer checkout do produto pela página carrinho

    @address_checkout_edition_charge
    Cenário: Validar edição do endereço de cobrança pelo checkout
        Quando clicar para editar o endereço de cobrança 
        E preencher todos os dados do endereço
        E clicar em salvar
        Então deverá salvar a edição do endereço de cobrança pelo checkout
    
    @address_checkout_edition_delivery
    Cenário: Validar edição do endereço de entrega pelo checkout
        Quando clicar para editar o endereço de entrega 
        E preencher todos os dados do endereço
        E clicar em salvar
        Então deverá salvar a edição do endereço de entrega pelo checkout
    
    @address_checkout_new
    Cenário: Validar adição de novo endereço pelo checkout
        Quando clicar para adicionar um novo endereço
        E preencher todos os dados do endereço
        E clicar em salvar
        Então deverá salvar o endereço cadastrado