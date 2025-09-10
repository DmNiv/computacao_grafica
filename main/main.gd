extends Node

var painel_cena = preload("res://Control_Panel/control_panel.tscn")

func _ready():
	var painel = painel_cena.instantiate()
	add_child(painel)
	painel.position = Vector2(100, 100)
	
