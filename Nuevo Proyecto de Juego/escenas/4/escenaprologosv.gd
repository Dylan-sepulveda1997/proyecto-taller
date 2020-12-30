extends Control
var dialog =["SV: Holiss"
,"Está sentada en el living, en el centro de un círculo de libros. Lo imprescindible de tenerlos todos abiertos al mismo tiempo es debatible, pero en algo debe ayudarle si logró volverse una alumna destacada."
,"MC: ¿Está entretenida la economía?"
,"SV: Ah, ya estoy harta de la vida u-u. Pero creo que ya voy a terminar. Por cierto, estudiaste para el control de mañana de Cálculo, ¿verdad?"
,"No estudie para el control de mañana de Cálculo."
,"MC: … Jajaja…"
,"Sus cejas querían desaparecer en su pelo, hace rato que no me sentía tan juzgada."
,"SV: Bueno, no te voy a dejar morir así nada más. Estaré repasando ahora por la tarde por si te dan ganas de salvar tu nota o algo así. "
,"UNA OPORTUNIDAD DE PASAR MÁS TIEMPO CON ELLA"]
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
