extends Area2D

onready var animationPlayer = $AnimationPlayer

func _physics_process(_delta):
	var bodies = get_overlapping_bodies()
	animationPlayer.play("coinverde")
	
	for body in bodies:
		if body.name == "player":
			body.contadorMonedaVerde += 1
			get_parent().remove_child(self)
			print(body.contadorMonedaVerde)
