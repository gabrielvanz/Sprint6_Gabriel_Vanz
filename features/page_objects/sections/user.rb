module Sections
    class User < SitePrism::Section
        element :account_info, 'p.info-account'
        element :link_list, '.myaccount-link-list'
        element :wish_list, '.lnk_wishlist'
    end
end