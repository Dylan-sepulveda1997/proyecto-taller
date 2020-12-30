extends Control
var dialog =["Está sentado en la esquina del comedor más cercana a la entrada, intercambiando miradas ansiosas con la puerta, y volviendo la vista a una pantalla llena de código y pestañas de buscador abiertas. ¿ las estará usando u olvido cerrarlas?"
,"MC: Tan ansioso, ¿Esperando a alguien?"
,"GT: JA, si claro. Estoy esperando que llegue el Super Smack Bros 3D edición limitada. "
,"MC: Oh, hace rato que queria jugarlo, pero no tengo plata :(."
,"GT: Pues si quieres podemos jugar cuando llegue, vas a tener que esperarme eso sí."
,"MC: ¿Te refieres a que llegue el juego o que termines tu trabajo?"
,"No sabía que era posible poner cara de “claramente no voy a priorizar mi trabajo antes que un videojuego”, pero ahora lo he visto."
,"GT:Anyways, te espero si estás libre en un rato."
,"¿Videojuegos! Es tentador, pero aun falta hablar con alguien...","MC: Hmm, te hablaré en un rato si tengo tiempo. ¡Nos vemos!"]
var dialog_index=0
var finished = false

func _ready():
	load_dialog()
	
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_Z:
			load_dialog()
		
func load_dialog():
	
	if dialog_index < dialog.size():
		$RichTextLabel.bbcode_text=dialog[dialog_index]
	if dialog_index == dialog.size():
		get_tree().change_scene("res://escenas/4/escenaprologosv.tscn")
	#	$RichTextLabel.percent_visible=0
	#else:
	#	queue_free()
	dialog_index +=1
