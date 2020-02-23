class EstruturaFormularioPage < SitePrism::Page

    #mapeamento de inputs
    element :email_input, '#email_create'
    element :create_acc_button, '#SubmitCreate'
    element :title_radio_mr, '#id_gender1'
    element :title_radio_mrs, '#id_gender2'
    element :nome1_input, '#customer_firstname'
    element :sobrenome_input, '#customer_lastname'
    element :email_input2, '#email'
    element :senha_input, '#passwd'
    element :checkbox_newsletter1, '#newsletter'
    element :checkbox_newsletter2, '#optin'
    element :meu_nome_input, '#firstname'
    element :meu_sobrenome_input, '#lastname'
    element :compania_input, '#company'
    element :endereco_input, '#address1'
    element :cidade_input, '#city'
    element :cep_input, '#postcode'
    element :adicional_input, '#other'
    element :home_phone_input, '#phone'
    element :mobile_phone_input, '#phone_mobile'
    element :email_alternativo_input, '#alias'
    
    #mapeamento button
    element :register_button, '#submitAccount'
    
    
    #element :estado_select '#id_state'
    #element :pais_select '#postcode'

    #construtor select estado
    #def initialize
      #  @estado_alabama = '#id_state'
       # @estado_

    def clicar_radio_tittle(parametro_title)
        if (parametro_title == "Mrs")
            title_radio_mrs.click
           # sleep(5)
        elsif (parametro_title == "Mr") 
            title_radio_mr.click
        else
            puts("Houve um erro na seleção dos radios_titles")
        end
    end

    def checkbox_newsletter
        check('newsletter', allow_label_click: true)
        check('optin', allow_label_click: true)
        uncheck('newsletter', allow_label_click: true)
        uncheck('optin', allow_label_click: true)
    end

    def criar_conta
        create_acc_button.click
    end

    #cadastro
    def preencher_formulario(argumento)
        email_input.set argumento[0]
        criar_conta
        clicar_radio_tittle(argumento[1])
        nome1_input.set argumento[2]
        sobrenome_input.set argumento[3]
        email_input2.set argumento[4]
        senha_input.set argumento[5]
        checkbox_newsletter
        meu_nome_input.set argumento[6]
        meu_sobrenome_input.set argumento[7]
        compania_input.set argumento[8]
        endereco_input.set argumento[9]
        cidade_input.set argumento[10]
        cep_input.set argumento[11]
        adicional_input.set argumento[12]
        home_phone_input.set argumento[13]
        mobile_phone_input.set argumento[14]
        email_alternativo_input.set argumento[15]
    end


end