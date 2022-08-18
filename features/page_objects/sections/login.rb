module Sections
    class Login < SitePrism::Section
        element :input_email, "#email"
        element :input_password, "#passwd"
        element :btn_login, "#SubmitLogin"    
        element :forgot_password, "p.lost_password.form-group > a"
        element :input_email_retrieve_password, ".form-control#email"    
        element :btn_retrieve_password, "button[type='submit'].button-medium" 
        element :msg_validate, "div.alert.alert-danger li"   
    end
end