class CadastroPage < SitePrism::Page

    def initialize
        @menu = MenuPage.new
        @estrutura = EstruturaFormularioPage.new
    end

    def cadastrar(objeto)
        @dados = objeto
        @menu.navegar "Sign in"
        @estrutura.preencher_formulario(@dados)
        # @estrutura.confirmar_cadastro
    end
end