extends MenuButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _unhandled_input(event):
	if event.pressed and event.scancode == KEY_SPACE:
			get_tree().change_scene("res://escenas/4/prologo.tscn")

