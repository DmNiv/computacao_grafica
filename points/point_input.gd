extends HBoxContainer

@onready var label: Label = $MarginContainer/HBoxContainer/Label
@onready var line_edit_x: LineEdit = $MarginContainer/HBoxContainer/LineEditX
@onready var line_edit_y: LineEdit = $MarginContainer/HBoxContainer/LineEditY

var label_text : String
var letter : String

signal point_removed(point)

func _ready() -> void:
	label.text = label_text

func get_point_coordinates() -> Vector2:
	var x = 0.0
	var y = 0.0
	
	# Tenta converter o texto dos campos de entrada para números
	if not line_edit_x.text.is_empty():
		x = float(line_edit_x.text)
	if not line_edit_y.text.is_empty():
		y = float(line_edit_y.text)
	
	return Vector2(x, y)

func _on_button_pressed() -> void:
	emit_signal("point_removed", self)
	queue_free()
