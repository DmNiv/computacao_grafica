# Main.gd
extends Node

var painel_cena = preload("res://Control_Panel/control_panel.tscn")
@onready var grid: Node2D = $Grid

func _ready():
	var painel = painel_cena.instantiate()
	add_child(painel)
	painel.position = Vector2(100, 100)
	
	for pixel in grid.list_pixels:
		print(pixel.global_position)
