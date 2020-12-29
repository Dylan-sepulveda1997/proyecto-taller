extends Control
var dialog =["¡Super Smack Bros 3D edición limitada! Desde que fue anunciada que estaba esperando una oportunidad y tener los fondos para poder comprarlo, no esperaba poder jugarlo ahora. Siempre me ha gustado esta saga, y jugando otras ediciones antiguas sentía que jugaba bastante bien. Pero creo que no me había encontrado con alguien que fuera realmente bueno, porque..."
,"MC:  RAUUUUUUUGH EL BORDE"
,"MC: Malditos controles."
,"MC: No estoy acostumbrada para nada."
,"GT: WOOOOOOOOOOOOOO"
,"GT: Hace rato que alguien no me daba la pelea, buena partida. Resultó que Gonzalo pasa buena parte de su tiempo libre jugando Smack, y me estaba haciendo pedazos, en vivo y en directo. "
,"MC: Uuuugh doy asco en este juego parece."
,"GT: Jajaja, si igual asco es mucho. Se nota que sabes algo al menos. Claramente un insulto de lo más grave. Inaceptable. Tengo que redimirme de alguna forma."
,"MC: Mira, quizás no puedo ganar contra tu main, pero te apuesto que en un combate de personajes al azar te gano." 
,"GT: ¿Un desafío? Hagamos una apuesta then. Definitivamente se le ve confiado, ¡puedo aprovechar esto para obtener venganza!"
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
,"MC: Bueno, como resulta que se te da bien eso de jugar un solo personaje, pensé que quizás podrías.. ¿ayudarme a practicar?"
,"GT: Bueno, lo que quieras puedo hacerlo si es por ti."
,"!!!!!!!!!! "
,"Se ve bastante contento con el “desafío”, me tomó por sorpresa. "
,"MC: B-bueno, estoy segura de que puedo ganarte si me enseñas. "
,"MC: Entonces.. ¿podrías ayudarme?"
,"En un momento impulsivo le señale al lugar a mi lado para que se sentara. Decidió sentarse pegado al lado mio."
,"GT: Claro, si así lo prefieres."
,"*Puso su brazo en mis hombros, y empezó a explicar como funcionan varios combos del juego y cómo practicarlos. Si no fuera porque estaba pegada a él ahora no habría escuchado nada, apenas podía concentrarme en sujetar el control correctamente. Eventualmente, dejó de hablar sobre práctica y se puso a hablar sobre algunos personajes en general, y me dejé descansar en su hombro hasta que solo escuchaba sus latidos.*"
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
