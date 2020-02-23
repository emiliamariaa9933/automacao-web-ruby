class MenuPage < SitePrism::Page

    def initialize
        @register_link = 'Sign in'
        @contact_link = 'Contact us'
    end


    def navegar(parametro)
        if parametro == 'Sign in'
            click_link @register_link
        else
            click_link @contact_link
        end
    end
end