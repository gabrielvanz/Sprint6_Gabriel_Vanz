require_relative '../sections/user'

module Pages
    class My_account < SitePrism::Page
        set_url '/index.php?controller=my-account'
        section :myAccount, Sections::User, '#my-account'
    end
end