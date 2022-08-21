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

Quando('fazer checkout do produto pelo carrinho') do
    sleep 0.5
    @cart_page = Pages::Cart.new
    @cart_page.load
    sleep 0.5
    @cart_page.procced_to_checkout.click
    @checkout_page = Pages::Checkout.new
    @checkout_page.procced_to_checkout_stepOne.click
end                                                                                                                                                 

Quando('selecionar o meio de pagamento') do
    @checkout_page.payment_module.first.click
end

Quando('confirmar o pagamento') do
    @checkout_page.confirm_payment.click
end

Então('deverá finalizar o checkout com sucesso') do
    expect(@cart_page).to have_content "Your order on My Store is complete."
end

Então('irá avançar para a finalização da compra') do
    @checkout_page = Pages::Checkout.new
    expect(@checkout_page).to have_content "BANK-WIRE PAYMENT"
end


Quando('marcar os termos de serviço') do
    @checkout_page = Pages::Checkout.new
    @checkout_page.terms_of_service.click                         
end

Então('deverá avançar para a página de pagamento') do
    expect(@checkout_page).to have_content "PLEASE CHOOSE YOUR PAYMENT METHOD"
end

Quando('prosseguir com a finalização da compra') do                       
    @checkout_page.procced_to_checkout_stepTwo.click
end
