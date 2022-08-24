Quando('fazer checkout do produto pela página carrinho') do
    @cart_page = Pages::Cart.new
    @cart_page.load
    @cart_page.procced_to_checkout.click
end

Quando('clicar para editar o endereço de cobrança') do
    @address_page = Pages::Address.new
    @address_page.address_edit[1].click
end
  
Quando('preencher todos os dados do endereço') do
    @address_page.set_address_data()
end
  
Quando('clicar em salvar') do
    @address_page.save_address.click
end

Então('deverá salvar a edição do endereço de cobrança pelo checkout') do
    expect(@address_page.charge_verify_address1.text).to eql Factory::Static.static_data('user_address')['address']
    expect(@address_page.charge_verify_phone.text).to eql Factory::Static.static_data('user_address')['homePhone']
end

Quando('clicar para editar o endereço de entrega') do
    @address_page = Pages::Address.new  
    @address_page.address_edit[0].click
end

Então('deverá salvar a edição do endereço de entrega pelo checkout') do
    expect(@address_page.delivery_verify_address1.text).to eql Factory::Static.static_data('user_address')['address']
    expect(@address_page.delivery_verify_phone.text).to eql Factory::Static.static_data('user_address')['homePhone']
end

Quando('clicar para adicionar um novo endereço') do
    @address_page = Pages::Address.new  
    @address_page.new_address.click
end

Então('deverá salvar o endereço cadastrado') do                            
    expect(@address_page.list_address[-1]).to be_truthy
end                                                                          