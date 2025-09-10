extends Node2D

@onready var pixels: Node = $Pixels

@onready var list_pixels = pixels.get_children()

func _ready() -> void:
	var linha = -10
	var coluna = -10
	for pixel in list_pixels: 
		pixel.position = Vector2(linha, coluna)
		linha += 1
		if linha == 11:
			linha = -10
			coluna += 1
