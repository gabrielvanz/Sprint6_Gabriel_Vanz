module Pages
    class Address < SitePrism::Page
        elements :address_edit, "li.address_update .button.button-small.btn.btn-default"

        element  :name,                     "input[name='firstname']"
        element  :lastname,                 "input[name='lastname']"
        element  :address,                  "input[name='address1']"
        element  :city,                     "input[name='city']"
        elements :state,                    "select[name='id_state'] > option"
        element  :postalCode,               "input[name='postcode']"
        element  :homePhone,                "input[name='phone']"
        element  :mobilePhone,              "input[name='phone_mobile']"
        element  :name_address,             "#alias"
        element  :save_address,             "button[name='submitAddress']" 
        element  :charge_verify_address1,   "#address_invoice .address_address1"
        element  :charge_verify_phone,      "#address_invoice .address_phone"
        element  :delivery_verify_address1, "#address_delivery .address_address1"
        element  :delivery_verify_phone,    "#address_delivery .address_phone"
        element  :new_address,              ".address_add.submit > a"
        elements :list_address,             "#id_address_delivery > option"


        def set_address_data()
            name.set Factory::Static.static_data('user_address')['name']
            lastname.set Factory::Static.static_data('user_address')['lastname']
            address.set Factory::Static.static_data('user_address')['address']
            city.set Factory::Static.static_data('user_address')['city']
            state[4].click
            postalCode.set Factory::Static.static_data('user_address')['postalCode']
            homePhone.set Factory::Static.static_data('user_address')['homePhone']
            mobilePhone.set Factory::Static.static_data('user_address')['mobilePhone']
            name_address.set Factory::Dynamic.address_name[:address_name]
        end
    end
end