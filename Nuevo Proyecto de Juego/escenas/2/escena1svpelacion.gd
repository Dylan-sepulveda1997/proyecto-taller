extends Control
var dialog =["*Tres horas después*",
"Resulta que Sofía hablaba muy en serio con lo de estudiar. Esperaba escuchar más sobre ella durante la tarde, pero terminamos atropellando todos los controles pasados que nos encontramos, y no hubo mucho tiempo para conversación casual. Pero al menos siento que puedo defender mi dignidad mañana."
,
"MC: *bostezo* Ja…. Creo que es suficiente. Ya no me queda espacio para recordar nada más. Le alcanzo mi hoja con la última respuesta para recibir su aprobación. Se ve cansada, pero igual me sonríe cuando la recibe."
,"SV: Hmm… está bien, se entiende la demostración y todo. Tu letra sigue fatal eso sí."
,"MC: Ja ja, menos mal no es caligrafía avanzada y aplicaciones."
,"..."
,"¿Mi chiste fue tan malo? Oh no, tengo que decir algo para romper la tensión."
,"MC: Oye... gracias por ayudarme con esto." 
,"SV: Ah, está bien. Si igual tenía que estudiar para esa clase, y aparte no podía dejarte sola."
,"MC: Pero igual en serio, me sentía muy perdida, no sé qué había hecho sin tí. Definitivamente me afectó estudiar tanto sin descanzo, porque no me explico cómo vi que Sofía se sonrojara tanto por un comentario como ese."
,"MC: !!!!!!!!!!"
,"MC: Ahhh, jaaaa, Fijo me está saliendo humo por las orejas ahora."
,"MC: … hablamos de ti supongo? Porque si había una tipa linda...eh… eras tú … claramente"
,"SV: pfffffjajaja weona jamás has coqueteando en tu vida? Que cute."
,"MC: Jajajaja, dame un minuto. Quiero ver dónde termina el sueño."
,"SV: Bueno, a mi ya me dio hambre. ¿Me acompañas a pedir algo mientras esperas despertar? Si quieres te ayudo con eso ;)"
,"…¿Me va a pellizcar?"
,"MC: … :)"
,"Pedimos una pizza familiar que decidimos compartir con nuestros compañeros cuando llegasen eventualmente, y hablamos toda la noche de todo menos el control, y estuve pensando en nada excepto en el momento cuando decidió tomarme la mano a través de la mesa, para quedarse ahí." ]
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
		get_tree().change_scene("res://escenas/5/eleccion1.tscn")
	#	$RichTextLabel.percent_visible=0
	#else:
	#	queue_free()
	dialog_index +=1
