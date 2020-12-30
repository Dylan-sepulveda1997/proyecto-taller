extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_Z:
			get_tree().change_scene("res://escenas/3/creditos.tscn")
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
pass
