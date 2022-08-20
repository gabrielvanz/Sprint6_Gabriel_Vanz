Dado('que o usuário esteja logado') do
    steps %{
        Dado que esteja na página de autenticação
        Quando for preenchido corretamento os dados de login
        Então deverá logar o usuário
    }
end

Dado('que o produto tenha sido adicionado ao carrinho') do
    steps %{
        Dado que esteja na vitrine de produtos
        Quando adicionar produto da vitrine ao carrinho
        Então o produto deverá ser adicionado ao carrinho com sucesso pela vitrine
    }
end

# Dado que esteja na home
#         E realizar uma busca por um produto existente
#         Quando acessar a página do produto
#         E adicionar o produto ao carrinho
#         Então o produto deverá ser adicionado ao carrinho com sucesso

Quando('fazer checkout do produto pelo carrinho') do
    sleep 0.5
    @cart_page = Pages::Cart.new
    @cart_page.load
    sleep 0.5
    @cart_page.procced_to_checkout.click
    @checkout_page = Pages::Checkout.new
    @checkout_page.procced_to_checkout_stepOne.click
end

Quando('o termo de serviço estiver marcado') do     
    @checkout_page.terms_of_service.click                         
    @checkout_page.procced_to_checkout_stepTwo.click
end                                                                          

Quando('selecionar o meio de pagamento') do     
    @checkout_page.payment_module.first.click
    @checkout_page.confirm_payment.click
end                                                                          

Então('deverá finalizar o checkout com sucesso') do
    expect(@cart_page).to have_content "Your order on My Store is complete."
end
