module Sections
    class Header < SitePrism::Section
        element :input_search, "input[name='search_query']"
        element :btn_submit_search, "button[name='submit_search']"
        element :btn_signin, ".header_user_info .login"
    end
end