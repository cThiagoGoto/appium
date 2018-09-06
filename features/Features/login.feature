#language: pt

Funcionalidade: Login
    Devo realizar login no aplicativo Minha Conta
    Para utilizar as features presentes na aplicação
    Como usuário do sistema
    Eu quero logar no aplicativo Minha Conta

@reinstall
Cenário: Posso efetuar um Login no app Minha Conta
Dado que estou na tela de Login
E digitei os dados de Login "validos"
Quando tocar em ENTRAR
Então devo estar logado no app Minha Conta

@nok
Cenário: Devo ter a opção de recuperar minha senha
Dado que estou na tela de Login
Quando tocar em "esqueci minha senha"
Então devo iniciar o processo de recuperar a minha senha

