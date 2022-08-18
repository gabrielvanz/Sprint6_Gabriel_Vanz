module Pages
    class Checkout < SitePrism::Page
        set_url '/index.php?controller=order&step=1'
        
        element  :procced_to_checkout_stepOne, "button[name='processAddress']"
        element  :terms_of_service, ".checker"
        element  :procced_to_checkout_stepTwo, "button[name='processCarrier']"
        elements :payment_module, ".payment_module"
        element  :confirm_payment, "#cart_navigation > button"
    end
end