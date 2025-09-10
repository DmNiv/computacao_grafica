extends Control

@onready var texture_rect: TextureRect = $TextureRect


var img = Image.create_empty(51, 51, true, Image.FORMAT_L8)

func _ready():
	img.fill(Color.WHITE)
	texture_rect.texture = ImageTexture.create_from_image(img)
	
func paint_pixel(x, y):
	x += 25
	y *= -1
	y += 25
	img.set_pixel(x, y, Color.BLACK)
