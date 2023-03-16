extends Node2D

var ordem_certa = [1, 2, 3, 4]
var ordem_do_jogador = []
var pontos = 0

func _ready():
	$"Parabéns,VocêConseguiu!!(1)".hide()
	$VocePerdeu.hide()

func verificacao():
	if ordem_do_jogador == ordem_certa:
		$"Parabéns,VocêConseguiu!!(1)".show()
		ordem_do_jogador = []
		pontos += 10
	
	else:
		$VocePerdeu.show()
		ordem_do_jogador = []
		pontos -= 2
	$Label3.text = String(pontos)

func montar_lista(numero):
	ordem_do_jogador.append(numero)
	if len(ordem_certa) == len(ordem_do_jogador):
		verificacao()

func _on_Button_pressed():
	montar_lista(1)
	print(ordem_do_jogador)
	$Button/plantinha.hide()

func _on_Button2_pressed():
	montar_lista(2)
	print(ordem_do_jogador)
	$Button2/cama.hide()
	
func _on_Button3_pressed():
	montar_lista(3)
	print(ordem_do_jogador)
	$Button3/sofa.hide()

func _on_Button4_pressed():
	montar_lista(4)
	print(ordem_do_jogador)
	$Button4/frigideira.hide()
	
func _on_Button5_pressed():
	get_tree().change_scene("res://menu.tscn")
	

func _on_Button9_pressed():
	$"Parabéns,VocêConseguiu!!(1)".hide()
	$Button2/cama.show()
	$Button/plantinha.show()
	$Button4/frigideira.show()
	$Button3/sofa.show()

func _on_Button8_pressed():
	$VocePerdeu.hide()
	$Button2/cama.show()
	$Button/plantinha.show()
	$Button4/frigideira.show()
	$Button3/sofa.show()
