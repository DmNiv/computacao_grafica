extends HBoxContainer

@onready var label: Label = $MarginContainer/HBoxContainer/Label
@onready var line_edit_x: LineEdit = $MarginContainer/HBoxContainer/LineEditX
@onready var line_edit_y: LineEdit = $MarginContainer/HBoxContainer/LineEditY

var label_text : String
var letter : String

signal point_removed(point)

func _ready() -> void:
	label.text = label_text
	line_edit_x.text = "0"
	line_edit_y.text = "0"

func get_pixel(x, y):
	x = int(x)
	y = int(y)

func _on_button_pressed() -> void:
	emit_signal("point_removed", self)
	queue_free()

func _on_line_edit_x_text_submitted(new_text: String) -> void:
	pass # Replace with function body.


func _on_line_edit_y_text_submitted(new_text: String) -> void:
	pass # Replace with function body.
