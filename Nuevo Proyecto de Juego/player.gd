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
var sv = 0
var tomas = 0
var gt = 0
var contadorMonedaRosa = 0
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

 # Replace with function body.


# Replace with function body.


func _on_gonzalo_body_exited(body):
	if body.get_name()=="player":
		if contadorMonedaRosa >=1 :
			get_tree().change_scene("res://escenas/2/escena1gtpelacion.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/2/escena1gt.tscn")
	pass # Replace with function body.


func _on_matias_body_entered(body):
	if body.get_name()=="player":
		if contadorMonedaVerde >=1 :
			get_tree().change_scene("res://escenas/2/escena1svpelacion.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/2/escena1sv.tscn")
	pass # Replace with function body.


func _on_sofia_body_entered(body):
	if body.get_name()=="player":
		if contadorMonedaVerde >=1 :
			get_tree().change_scene("res://escenas/2/escena1svpelacion.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/2/escena1sv.tscn")
	pass # Replace with function body.


func _on_Area2D3_body_entered(body):
	if body.get_name()=="player":
		if sv > 0 and tomas > 0 and gt > 0:
			get_tree().change_scene("res://escenas/1/Node2D.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/4/escenaprologotv.tscn")
	pass # Replace with function body.


func _on_Area2D2_body_entered(body):
	if body.get_name()=="player":
		if sv > 0 and tomas > 0 and gt > 0:
			get_tree().change_scene("res://escenas/1/Node2D.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/4/escenaprologogt.tscn")
	pass
	 # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.get_name()=="player":
		if sv > 0 and tomas > 0 and gt > 0:
			get_tree().change_scene("res://escenas/1/Node2D.tscn")
		#elif contadorMonedaVerde >=2:
		#	get_tree().change_scene("res://escenas/2/dialogo2.tscn")
		else:
			get_tree().change_scene("res://escenas/4/escenaprologosv.tscn")
	pass # Replace with function body.
