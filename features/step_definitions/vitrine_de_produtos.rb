Dado('que esteja na vitrine de produtos') do
    steps %{
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
    }
end

Quando('acessar a visualização rápida deste produto') do
    @search_results_page.access_products_modal(0)
end                                                                          

Quando('adicionar produto da vitrine ao carrinho') do
    @product_showcase = Pages::ProductShowcase.new
    @product_showcase.products_add_cart(1)
end

Então('o produto deverá ser adicionado ao carrinho com sucesso pela vitrine') do
    expect(@product_showcase.modal_cart).to have_content "Product successfully added to your shopping cart"
end
