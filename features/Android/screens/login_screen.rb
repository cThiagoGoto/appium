class LoginScreen < AndroidScreenBase
    def initialize
        @layoutName = 'container_form_login'
        @campoEmail = 'input_email'
        @campoSenha = 'input_password'
        @btnLogin   = 'btn_login'
        @telaLogada = 'custom_title_toolbar'
    end

    LISTA = {
        "email" => "goto@vendedor.com",
        "senha" => "ps654321"
    }

    def verificaTelaLogin
        begin
            find_element(id: @layoutName).displayed?
        rescue
            false
        end 
    end

    def digitarDados
        find_element(:id, @campoEmail).send_keys LISTA["email"]
        find_element(:id, @campoSenha).send_keys LISTA["senha"]
    end

    def tocarEntrar
        find_element(:id, @btnLogin).click
    end 

    def verificarLogado
        if find_element(:id, @telaLogada).text == "Minha Conta"
            return true
        else
            return false
        end
    end 

    def tocarEntrar2
        wait_element_for_touch(@btnLogin)
    end 

end