require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        set_url ''
        section :header, Sections::Header, 'header#header'
        sections :products, Sections::Products, 'div .product-container'

        def access_products_page(index)
            products[index].name.click
        end

        def access_products_modal(index)
            products[index].quickView.click
        end
    end
end