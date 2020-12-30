extends Control
var dialog =["TV: ¡Hola Mari!"
,"Está preparando un batido verde en la cocina común. ¿Una receta de esas con huevo quizás? *escalofrío*"
,"No se lo piensa y me recibe con un abrazo. Pero es mucho más grande que yo."
,"MC: *cof cof* aprietas-"
,"TV: Jajaja perdon."
,"Me soltó y se quedó mirando mientras sonreía, y me dio la impresión de estar viendo un perro gigante que olvidó que ya no es un cachorro."
,"TV: Antes de que se me olvide, hay una clase abierta hoy en el gimnasio y me dijeron que llevara a alguien. Entonces, me gustaría que me acompañaras. ¿te nos unes?"]
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
