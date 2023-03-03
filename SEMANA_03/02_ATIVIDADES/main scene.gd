extends Node2D
var lista = []

func _on_PREENCHER_LISTA_pressed():
	$ColorRect/RichTextLabel.text = ""
	var elementos = $LineEdit.text
	var elementos_separados = elementos.split(" ")
	print (elementos_separados)
	
	for item in elementos_separados:
		$ColorRect/RichTextLabel.text += (item+ "\n")


func _on_LISTA_PREENCHIDA_pressed():
	$ColorRect/RichTextLabel.text = ""
	var elementos = "Lapideira Lápis Borracha Apontador"
	var elementos_separados = elementos.split(" ")
	print (elementos_separados)
	
	for item in elementos_separados:
		$ColorRect/RichTextLabel.text += (item+ "\n")
		
	
func _on_PREENCHER_TEXTO_pressed():
	$ColorRect/RichTextLabel.text = ""
	var texto = $LineEdit2.text
	print (texto)
	
	for item in texto:
		$ColorRect/RichTextLabel.text += (item)


func _on_TEXTO_PREENCHIDO_pressed():
	$ColorRect/RichTextLabel.text = ""
	var texto = "Oi, tudo bem com você?"
	print(texto)
	
	for item in texto:
		$ColorRect/RichTextLabel.text += (item)
