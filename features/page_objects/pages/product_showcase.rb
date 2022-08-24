require_relative '../sections/showcase'
module Pages
    class ProductShowcase < SitePrism::Page
        set_url ''
        sections :showcase_products, Sections::Showcase, 'div .product-container'
        
        element :modal_cart, '#layer_cart > div.clearfix'
        elements :btn_add_compare, '.add_to_compare'
        elements :compare_value, '.total-compare-val'

        def products_add_cart(index)
            showcase_products[index].btn_add_cart.click
        end 
    end
end