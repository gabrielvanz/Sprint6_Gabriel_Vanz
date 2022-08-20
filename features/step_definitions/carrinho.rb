Quando('aumentar a quantidade do produto no carrinho') do
    sleep 1.5
    @cart_page = Pages::Cart.new
    @cart_page.load
    sleep 1
    @cart_page.increase_product.click
    sleep 1.5
end

Então('deverá alterar a quantidade exibida no carrinho para {string}') do |string|
    expect(@cart_page.cart_quantity_products_cartPage.value).to eql "2"
end

Quando('diminuir a quantidade do produto no carrinho') do
    sleep 1.5
    @cart_page = Pages::Cart.new
    @cart_page.load
    sleep 1
    @cart_page.decrease_product.click
    sleep 1.5
end

Então('deverá remover o produto do carrinho') do
    expect(@cart_page).not_to have_cart_item
end

Quando('clicar na lixeira de um produto existente no carrinho') do
    sleep 1.5
    @cart_page = Pages::Cart.new
    @cart_page.load
    sleep 1
    @cart_page.cart_remove_product_cartPage.click
end

Então('deverá remover o produto do carrinho na página do carrinho') do
    expect(@cart_page).not_to have_cart_item
end

Quando('clicar na lixeira de um produto existente no carrinho no modal do carrinho') do
    sleep 1.5
    @cart_page = Pages::Cart.new
    @cart_page.exit_modal_page.click
    @cart_page.modal_cart.hover
    @cart_page.cart_remove_product_modal.click
end

Então('deverá remover o produto do modal do carrinho') do
    expect(@cart_page).not_to have_cart_item_modal
end

Dado('que esteja na página do carrinho') do
    @cart_page = Pages::Cart.new
    @cart_page.load
end
  
Quando('clicar em Proceed to checkout') do
    @cart_page.procced_to_checkout.click
end
  
Então('deverá avançar para a autenticação no checkout') do
    expect(@cart_page).to have_content "AUTHENTICATION"
end

Quando('clicar em checkout no modal do carrinho') do
    @cart_page = Pages::Cart.new
    @cart_page.modal_cart.hover
    @cart_page.modal_cart_checkout.click
end

Então('deverá avançar para a página do carrinho') do
    expect(@cart_page).to have_content "SHOPPING-CART SUMMARY"
end