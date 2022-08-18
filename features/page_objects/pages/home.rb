require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url '/'
        section :header, Sections::Header, 'header#header'

        def search_for(product)
            header.input_search.set product
            header.btn_submit_search.click
        end

        def signin()
            header.btn_signin.click
        end
    end
end