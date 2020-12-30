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

,"SV:..."
,"MC:..."
,"SV: Um… gracias."
,"MC: … Si. "
,"MC: Osea. No. Gracias. A ti gracias, no que no gracias-"
,"SV: Jajajaja te entendí. Gracias también. "
,"MC: Hahaha La verdad es que debo tener mucho sueño, porque encontré muy bonita su risa recién."
,"SV: Bueno, como que ya me dio hambre, ¿te parece si pedimos algo? "

,"Pedimos una pizza familiar que definitivamente consideré terminar sola, y conversamos mucho rato juntas sobre la vida, y evitamos agresivamente volver a mencionar nuestras evaluaciones, para intentar recuperar algo de paz antes de enfrentar el control directamente. Y definitivamente pude mantener el control y evitar sonrojarme cuando se acercó a limpiar una mancha de salsa que tenía en la mejilla, y aunque pasara ella no dijo nada, así que debió estar bien de todas formas."
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
