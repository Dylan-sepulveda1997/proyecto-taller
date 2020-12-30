extends KinematicBody2D

const TARGET_FPS = 60

const ACCELERATION = 10
const MAX_SPEED = 150
const FRICTION = 15
const AIR_RESISTANCE = 2
const GRAVITY = 30
const JUMP_FORCE = 500

var motion = Vector2.ZERO

onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer

var contadorMonedaVerde = 0
func _ready():
	
	$AnimationPlayer.play("IDLE")

func _physics_process(delta):
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	if x_input != 0:
		if motion.x > 0:
			$Sprite.set_flip_h(false)
		else:
			$Sprite.set_flip_h(true)
		$AnimationPlayer.play("RUN")
		motion.x += x_input * ACCELERATION * delta * TARGET_FPS
		motion.x = clamp(motion.x, -MAX_SPEED, MAX_SPEED)
	
	motion.y += GRAVITY * delta * TARGET_FPS
	
	if is_on_floor():
		if x_input == 0:
			$AnimationPlayer.play("IDLE")
			motion.x = lerp(motion.x, 0, FRICTION * delta)
			
		if Input.is_action_just_pressed("ui_select"):
			$AnimationPlayer.play("JUMP")
			motion.y = -JUMP_FORCE
	else:
		if motion.x >= 0:
			$Sprite.set_flip_h(false)
		else:
			$Sprite.set_flip_h(true)
		
		if Input.is_action_just_released("ui_select") and motion.y < -JUMP_FORCE/2:
			motion.y = -JUMP_FORCE/2
		
		if x_input == 0:
			$AnimationPlayer.play("IDLE")
			motion.x = lerp(motion.x, 0, AIR_RESISTANCE * delta)
	
	motion = move_and_slide(motion, Vector2.UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D4_body_entered(body):
	if body.get_name()=="player":
		if contadorMonedaVerde >=1 :
			get_tree().change_scene("res://escenas/2/escena1svpelacion.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/2/escena1sv.tscn")
	pass # Replace with function body.
