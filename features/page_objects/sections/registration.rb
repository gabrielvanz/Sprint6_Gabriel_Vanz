module Sections
    class Registration < SitePrism::Section
        element  :input_email, "input[name='email_create']"
        element  :btn_create_account, "#SubmitCreate"
        element  :name, "input[name='customer_firstname']"
        element  :lastname, "input[name='customer_lastname']"
        element  :password, "input[name='passwd']"
        element  :address, "input[name='address1']"
        element  :city, "input[name='city']"
        elements :state, "select[name='id_state'] > option"
        element  :postal_code, "input[name='postcode']"
        element  :country, "select[name='id_country'] > option"
        element  :telephone, "input[name='phone_mobile']"
        element  :btn_registration, "button[name='submitAccount']"
    end
end