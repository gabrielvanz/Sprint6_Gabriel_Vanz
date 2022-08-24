Quando('adicionar um produto para comparar') do
    @product_showcase = Pages::ProductShowcase.new
    sleep(3)
    @product_showcase.btn_add_compare[0].click
    sleep(5)
end

Quando('entrar na página de comparação') do                                  
    @comparation_page = Pages::Comparation.new
    @comparation_page.load
end                                                                          
                                                                               
Então('deverá exibir o produto com seus valores') do     
    sleep(3)
    expect(@comparation_page).to have_content @comparation_page.products_to_comparation[0].text
end  

Quando('remover o produto da comparação') do
    @comparation_page = Pages::Comparation.new
    @comparation_page.products_to_comparation_remove[0].click
end

Então('Deverá exibir a mensagem {string}') do |string|
    expect(@comparation_page).to have_content string
end