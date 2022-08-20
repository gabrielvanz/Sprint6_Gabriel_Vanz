module Pages
    class Cart < SitePrism::Page
        set_url '/index.php?controller=order'

        element  :checkout_by_cart, '.shopping_cart > a'
        element  :procced_to_checkout, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'
        
        #Cart Page
        element  :increase_product, '.cart_quantity_up'
        element  :decrease_product, '.cart_quantity_down'
        element  :cart_remove_product_cartPage, ".cart_quantity_delete"
        element  :cart_quantity_products_cartPage, ".cart_quantity_input.form-control"
        element  :cart_item, ".cart_item"
        element  :cartInfo, ".shopping_cart .first_item"

        #Cart Modal
        element  :modal_cart, "#header > div:nth-child(3) > div > div > div:nth-child(3) > div > a"
        element  :exit_modal_page, "span.cross"
        element  :cart_remove_product_modal, "a[class='ajax_cart_block_remove_link']"
        element  :cart_item_modal, ".products .first_item"
        element  :modal_cart_checkout, "#button_order_cart"
    end
end