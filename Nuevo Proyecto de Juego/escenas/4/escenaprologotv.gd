extends Control
var dialog =["Hace una semana que decidimos mudarnos, pero siento que no los conozco para nada…",
"¡Suficiente! No puedo seguir esperando a que nos hagamos amigos de la nada. Me aseguraré de conocer a al menos uno de mis compañeros de cuarto. Pero, ¿a quién?"
,"Supongo que comenzaré con el...",
"TV: ¡Hola Mari!"
,"Está preparando un batido verde en la cocina común. ¿Una receta de esas con huevo quizás? *escalofrío*"
,"No se lo piensa y me recibe con un abrazo. Pero es mucho más grande que yo."
,"MC: *cof cof* aprietas-"
,"TV: Jajaja perdon."
,"Me soltó y se quedó mirando mientras sonreía, y me dio la impresión de estar viendo un perro gigante que olvidó que ya no es un cachorro."
,"TV: Antes de que se me olvide, hay una clase abierta hoy en el gimnasio y me dijeron que llevara a alguien. Entonces, me gustaría que me acompañaras. ¿te nos unes?","HMM... aún debo conocer al resto de mis compañeros...","MC: Te buscaré si estoy libre. ¡Nos vemos!"]
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
		get_tree().change_scene("res://escenas/4/escenaprologogt.tscn")
	#	$RichTextLabel.percent_visible=0
	#else:
	#	queue_free()
	dialog_index +=1
