extends Area2D



func _on_Area2D_body_entered(body):
	if body.name = "player":
		queue_free()
