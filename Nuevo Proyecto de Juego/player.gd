extends KinematicBody2D

<<<<<<< HEAD
export (int) var run_speed = 300
export (int) var jump_speed = -400
export (int) var gravity = 10000000

var velocity = Vector2()
var jumping = false

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_select')
	
	if right:
		$AnimatedSprite.flip_h =true
		
	elif left :
		$AnimatedSprite.flip_h =false

	if jump and is_on_floor():
		jumping = true
		velocity.y = jump_speed
		
	if right and not left:
		velocity.x += run_speed
		
	if left and not right :
		velocity.x -= run_speed

func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta*5
	if jumping and is_on_floor():
		jumping = false
	velocity = move_and_slide(velocity, Vector2(0, -1))
=======
const TARGET_FPS = 60

const ACCELERATION = 15
const MAX_SPEED = 200
const FRICTION = 20
const AIR_RESISTANCE = 20
const GRAVITY = 30
const JUMP_FORCE = 500

var motion = Vector2.ZERO

onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer

func _physics_process(delta):
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	if x_input != 0:
	
		motion.x += x_input * ACCELERATION * delta * TARGET_FPS
		motion.x = clamp(motion.x, -MAX_SPEED, MAX_SPEED)
	
	motion.y += GRAVITY * delta * TARGET_FPS
	
	if is_on_floor():
		if x_input == 0:
			motion.x = lerp(motion.x, 0, FRICTION * delta)
			
		if Input.is_action_just_pressed("ui_select"):
			motion.y = -JUMP_FORCE
	else:
		
		if Input.is_action_just_released("ui_select") and motion.y < -JUMP_FORCE/2:
			motion.y = -JUMP_FORCE/2
		
		if x_input == 0:
			motion.x = lerp(motion.x, 0, AIR_RESISTANCE * delta)
	
	motion = move_and_slide(motion, Vector2.UP)
>>>>>>> master


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
