extends Node2D

var teste = false
var valor = 0
var numero = 0 #mudei o nome da variável para ficar sem acento 
var lista = [] #adicionei var na frente da lista
var nome = " " #criei a variável nome e deixei vazia
var i #criei a variável i
var cont #criei a variável cont 

func _on_Button_pressed(): #conectei o botão com o nó
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #mudei o nome da variável para ficar sem acento e adicionei $ na frente do LineEdit
	nome = str($LineEdit.text) #corrigi a escrita e adicionei a string


func _on_Button2_pressed(): #conectei o botão com o nó
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #corrigi a escrita da variável
		lista.append(numero) #corrigi a escrita da variável
	$Label.text = str(lista) #mudei a variável para lista e adicionei o string 


func _on_Button3_pressed(): #conectei o botão com o nó
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	i=0 #mudei a posição da variável para o inicio da função
	cont=0 #mudei a posição da variável para o inicio da função
	while len(lista) > i: #corrigi o i para o loop ocorrer enquanto o mesmo for menor que a lista
		if(lista[i]%2==1):
			cont+=1
		if(cont==0): #mudei o sinal de diferente para igual e assim aparecer baldo somente uma vez
			nome = nome + "baldo \n" #criei uma quebra de linha
		i += 1 #finalizei o loop
		$Label2.text = nome