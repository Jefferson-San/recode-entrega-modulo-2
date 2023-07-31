Algoritmo "Cadastro agência de viagens"
procedimento consultarDestino()
var
inicio
   escreval("Seu embarque: ", destino[1])
   escreval("Seu desembarque: ", destino[2])
fimprocedimento



procedimento cadastroDestino()
var
inicio
   escreval("Digite de onde você irá partir: ")
   leia(destino[1])
   escreval("Digite o lugar de destino: ")
   leia(destino[2])
   escreval("Viagem cadastrada com sucesso")
   menu()

fimprocedimento



procedimento consultarCadastro()
var
   caractetisticas: vetor [1..5] de caracter
   i: inteiro

inicio
   caractetisticas[1] <- "Nome completo"
   caractetisticas[2] <- "Idade"
   caractetisticas[3] <- "Cpf"
   caractetisticas[4] <- "Telefone"
   caractetisticas[5] <- "Endereço"
   para i de 1 ate 5 faca
      escreval(caractetisticas[i], ": ", cliente[i])
   fimpara
   menu()
fimprocedimento

procedimento cadastroCliente()
var

inicio
   escreva("Nome Completo: ")
   leia(cliente[1])
   escreva("Idade: ")
   leia(cliente[2])
   escreva("Cpf: ")
   leia(cliente[3])
   escreva("Telefone: ")
   leia(cliente[4])
   escreva("Endereço: ")
   leia(cliente[5])
   escreval("Cliente cadastrado com sucesso")
   menu()
fimprocedimento

//fim procedimento cadastro


procedimento menu()
var
   desisao: inteiro

inicio
   escreval(" Bem vindo a agencia de viagens:")
   escreval("Fazer cadastro: 1")
   escreval("Cadastrar destino: 2")
   escreval("Consultar cadastro: 3")
   escreval("Consultar destino: 4")
   escreval("Sair do menu: 0")
   leia(desisao)

   escolha desisao
   caso 0
      repetirMenu <- 0
   caso 1
      cadastroCliente()
   caso 2
      cadastroDestino()
   caso 3
      consultarCadastro()
   caso 4
      consultarDestino()
   outrocaso
      escreval("Digite um numero valido")
   fimescolha
fimprocedimento
//fim procedimento menu


Var
   cliente: vetor [1..5] de caracter
   //nomeCompleto, idade, cpf, telefone, endereço
   destino: vetor [1..2] de caracter
   //destinoInicio, destinoFinal
   repetirMenu: inteiro

Inicio
   repetirMenu <- 1
   enquanto repetirMenu = 1 faca
      menu()
   fimenquanto


Fimalgoritmo