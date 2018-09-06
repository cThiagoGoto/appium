class LoginScreen
    def initialize
        @layoutName = 'loginView'
        @campoEmail = 'userTextField'
        @campoSenha = 'passTextField'
        @btnLogin   = 'loginButton'
        @telaLogada = 'Minha Conta'
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
        if find_element(:id, @telaLogada).name == "Minha Conta"
            return true
        else
            return false
        end
    end 
end