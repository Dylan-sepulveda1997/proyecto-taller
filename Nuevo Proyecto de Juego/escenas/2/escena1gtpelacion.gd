extends Control
var dialog =["¡Super Smack Bros 3D edición limitada! Desde que fue anunciada que estaba esperando una oportunidad y tener los fondos para poder comprarlo, no esperaba poder jugarlo ahora. Siempre me ha gustado esta saga, y jugando otras ediciones antiguas sentía que jugaba bastante bien. Pero creo que no me había encontrado con alguien que fuera realmente bueno, porque..."
,"MC:  RAUUUUUUUGH EL BORDE"
,"MC: Malditos controles."
,"MC: No estoy acostumbrada para nada."
,"GT: WOOOOOOOOOOOOOO"
,"GT: Hace rato que alguien no me daba la pelea, buena partida."
,"Resultó que Gonzalo pasa buena parte de su tiempo libre jugando Smack, y me estaba haciendo pedazos, en vivo y en directo. "
,"MC: Uuuugh doy asco en este juego parece."
,"GT: Jajaja, si igual asco es mucho. Se nota que sabes algo al menos. Claramente un insulto de lo más grave. Inaceptable. Tengo que redimirme de alguna forma."
,"MC: Mira, quizás no puedo ganar contra tu main, pero te apuesto que en un combate de personajes al azar te gano." 
,"GT: ¿Un desafío? Hagamos una apuesta then."
,"Definitivamente se le ve confiado, ¡puedo aprovechar esto para obtener venganza!"
,"MC: ¿Qué tal un reto entonces?"
,"GT: … ¿Así como verdad y reto?"
,"MC: Claro, da lo mismo, vas a perder igual."
,"GT: Dale. 3 partidas, 7 minutos, destino final, sin objetos."
,"MC: Claro, lo típico."
,"GT: ..."
,"Por el límite de tiempo no puedo decir que la partida fue eterna, pero si que se puso tensa. Gonzalo se especializó en mejorar con un personaje, pero yo toda la vida he jugado usando la lista entera de personajes. Jack of all trades, master of none. Pero ahora me sirvió para ganar ventaja. El es una bestia con sus main, pero con los demás..."
,"GT: AAAAAAAH QUE MAL RECOVERY TE ODIO MAQ La está sufriendo. La competencia por su cuenta sería premio suficiente, pero esto ya no es sobre satisfacción, es honor. Después de 20 tensos minutos finalmente hubo ganador."
,"MC: JAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAJAJAJAJAJA"
,"El grito que pegué nos traerá quejas de los vecinos, pero por Dios que valió la pena."
,"GT: ... cuando tuviste tiempo para aprender a jugar???"
,"MC: Jaja, la verdad es que jugar con un solo personaje y con todos es casi como jugar un juego distinto... "
,"MC: Considerando la paliza que me diste hace un rato, diría que está perfectamente equilibrado."
,"MC: Como todo debe ser GT: como todo debe ser?"
,"MC: jajaja... entonces, la apuesta..."
,"MC: Lo que quiero que hagas es …"
,"GT:..." 
,"MC:..."
,"GT:..."
,"MC: Enseñarme a preparar un main."
,"GT: Espera… ¿quieres que te enseñe a jugar?"
,"MC: Osea, si lo pones así suena mal."
,"MC: Prefiero decir que quiero que me ayudes a perfeccionar otra técnica."
,"GT: Bueno, si te ayuda a dormir tranquila."
,"GT: Aunque no es para nada lo que esperaba de un desafío. Bueno, te voy a mostrar cómo lo hago para practicar primero. Se acomoda en el sillón para acercarse un poco y mostrarme más de cerca sus controles, se sentó casi pegado a mi. La verdad aunque sabía que debería haberle puesto atención, entre el calor de su brazo a mi lado y el latido de mi corazón no escuche nada."

]
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
		get_tree().change_scene("res://escenas/1/Node2D.tscn")
	#	$RichTextLabel.percent_visible=0
	#else:
	#	queue_free()
	dialog_index +=1
