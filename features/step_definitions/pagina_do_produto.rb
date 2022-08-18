Quando('acessar a página do produto') do                                      
    @search_results_page.access_products_page(0)
    @product_page = Pages::ProductPage.new
end                                                                           

Quando('alterar a cor do produto') do
    @image_before = @product_page.main_image['src']                                         
    @product_page.colors[1].click
end                                                                           
                                                                            
Então('deverá alterar a imagem apresentada na PDP') do                        
    expect(@product_page.main_image['src']).not_to eql @image_before
end                                                                           

Dado('que esteja na página de um produto existente') do
    steps %{
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        E acessar a página do produto
    }
end

Quando('aumentar a quantidade do produto') do
    @product_page.btn_quantity_up.click
end

Quando('diminuir a quantidade do produto') do
    @product_page.btn_quantity_down.click
end
  
Então('deverá alterar a quantidade exibida na PDP para {string}') do |quantity|
    expect(@product_page.expect_quantity.value).to eql quantity
end

Quando('alterar o tamanho do produto') do
    @product_page.product_size[2].click
end

Então('deverá alterar o tamanho exibido na PDP') do
    expect(@product_page.product_size[2].text).not_to eql "M"
end

Quando('adicionar o produto ao carrinho') do
    @product_page.add_to_cart.click
end

Então('o produto deverá ser adicionado ao carrinho com sucesso') do
    expect(@product_page.modal_cart).to have_content "Product successfully added to your shopping cart"
end