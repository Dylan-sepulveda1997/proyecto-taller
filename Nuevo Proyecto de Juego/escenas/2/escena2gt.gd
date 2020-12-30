extends Control
var simultaneous_scene = preload("res://escenas/6/FINAL_BUENO.tscn").instance()
var dialog =[
"Cuando fui a recuperar mi celular del sofá, noté que Gonzalo estaba despierto.",
"GT: …",
"Su cara grita cansancio a kilómetros. ",
"MC: Oye, necesito mi celular, y creo que te sentaste en él.",
"GT: Ah, si- Perdón, ja.",
"MC: …",
"GT: …",
"Oof, incómodo. ¿Quizás lo pregunté mal?",
"GT: … Oye, perdón si te quité tiempo hoy, no fue mi intención.",
"¿Eh?",
"MC: ¿Pero como?",
"GT: Es que, perdona, de verdad que soy lento a veces con las indirectas. No caché que ibas a hacer algo con Tomás.",
"¿¿¿Como???",
"Tiene una cara de arrepentimiento ahora. No me lo creo.",
"MC: Gonzalo perdona pero no entiendo nada.",
"GT: Es que recién caché que estabas hablando con Tomás, no atiné a que probablemente preferirías hacer algo con él y que quizás los estaba interrumpiendo, si tiró la media indirecta.",
"MC: ¿Qué planes con Tomás? ¿Cómo que interrumpir? ¿Si decidimos jugar juntos en la tarde?",
"Quedamos los dos marcando ocupado. Por varios minutos ninguno supo responder a lo que estaba diciendo el otro.",
"No pude evitar ponerme a reír de nuevo, porque tengo descalibrada la parte de mi cerebro que me dice cuando es apropiado reir. Pero esta situación me rompió de alguna forma.",
"MC: Jajajajajaja Gonzalo, no. Jajajajaja ",
"MC: Para nada. jaaaa, no me gusta Tomás para nada, Jajajajaja.",
"Apenas podía respirar tratando de bajar mi propio volumen, pero aun así pude apreciar la cara de estupefacto que tenía frente a mi.",
"GT: Entonces… lo que conversaron",
"MC: Charla de media noche-",
"GT: ¿¿Y lo de interrumpir??",
"MC: ¡Él estaba diciendo que nos estaba interrumpiendo a nosotros!",
"MC: Oye, si esto fue una cita, ¿O no?",
"Por su cara pude notarlo, ahora si hizo click",
"GT: Jajajaja…..Jajajajajajaja",
"MC: Jajajajajaja",
"Los dos nos volvimos a sentar en el sofá, muertos de risa por una situación tan ridícula.",
"Eventualmente nos quedamos los dos sin aire. Y eventualmente los dos teníamos que volver a nuestras responsabilidades. En silencio, sin mucho más que decirnos, nos dimos las buenas noches y nos prometimos volver a jugar pronto."
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
		get_tree().get_root().add_child(simultaneous_scene)
	#	$RichTextLabel.percent_visible=0
	#else:
	#	queue_free()
	dialog_index +=1
