module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors, 'ul#color_to_pick_list>li'
        element  :main_image, '#bigpic'
        element  :btn_quantity_up, '.btn-default.button-plus'
        element  :btn_quantity_down, '.btn-default.button-minus'
        element  :expect_quantity, '#quantity_wanted'
        elements :product_size, "select[name='group_1'] > option"
        element  :add_to_cart, '#add_to_cart > button'
        element  :modal_cart, '#layer_cart > div.clearfix'
    end
end