extends Control

var point_scene = preload("res://points/point_input.tscn")
@onready var v_box_container: VBoxContainer = $VBoxContainer
var available_letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"]
var points = []
var letter : String

func _on_button_pressed() -> void:
	if available_letters.size() > 0:
		var point = point_scene.instantiate()
		letter = available_letters.pop_front()
		point.letter = letter
		point.label_text = "Ponto " + point.letter + ":"
		point.point_removed.connect(_on_point_removed)
		v_box_container.add_child(point)
		points.append(point)
	else:
		print("Máximo de pontos criados!")

func _on_point_removed(point):
	points.erase(point)
	
	# Adiciona a letra de volta à lista de disponíveis, mantendo a ordem alfabética
	_add_letter_back(point.letter)
	_update_point_names()

func _add_letter_back(letter: String):
	available_letters.insert(0,letter)
	available_letters.sort()

# Função auxiliar para atualizar o nome dos pontos restantes após uma exclusão
func _update_point_names():
	var current_letter_index = 0
	# Cria uma lista de todas as letras possíveis (A-Z) para a renomeação
	var all_letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
	
	for point in points:
		point.label_text = "Ponto " + all_letters[current_letter_index] + ":"
		# Atualiza o texto do Label dentro da cena de ponto
		current_letter_index += 1
		print("aaaaaaaiiiiii")
