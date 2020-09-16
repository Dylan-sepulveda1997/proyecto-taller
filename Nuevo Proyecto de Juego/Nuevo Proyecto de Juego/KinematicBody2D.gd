extends KinematicBody2D
var velocidad=500
var movimiento=Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(_delta):
	movimiento= Vector2()
	if Input.is_action_pressed("ui_right"):
		movimiento.x += 1
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= 1
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= 1
	if Input.is_action_pressed("ui_down"):
		movimiento.y = 1
	if movimiento.length() > 0:
		movimiento= movimiento.normalized()*velocidad
	position += movimiento*_delta
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
