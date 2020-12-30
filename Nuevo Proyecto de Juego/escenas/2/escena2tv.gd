extends Control
var simultaneous_scene = preload("res://escenas/6/FINALMALO.tscn").instance()

var dialog =["Pasaron varias horas desde esa apuesta. Cubiertos por la luz de la televisión y el silencio de madrugada, no había mucho espacio para conversación. ",
"Me despertaron las ganas de ir al baño a las 3 de la mañana, y noté que Gonzalo seguía dormido a mi lado.",
"Me dio vergüenza despertarlo, así que me levante a regar las plantas y a buscar un vaso de agua por mi cuenta.",
"*toc toc*",
"Casi se me cayó el vaso al escuchar la puerta, pero mis excelentes reflejos recientemente ejercitados me permitieron evitar el desastre.",
"TV:Hola~",
"MC: A a a a, me asustaste. ",
"TV: Bueno pero, ¿puedo pasar o interrumpo algo?",
"MC: Nononono, pasa, perdon.",
"Tomás venía claramente de una de sus ejercitadas nocturnas, sudado por completo y con energía. ¿Cómo es que duerme?" ,
"MC: No entiendo como puedes salir a trotar de noche.",
"TV: Bueno, es más tranquilo en general. No te cruzas con gente. Hay menos autos.",
"MC: Más asaltantes. Más probabilidad de encontrar un conductor ebrio.",
"TV: Oye, todo es más divertido con un poco de peligro, jajaja.",
"La risa que se me escapa es de sincera incredulidad, que alguien realmente vea solo beneficios a trasnocharse así se siente tan absurdo.",
"TV: Bueno te dejo. ¿No tienes clases mañana? Deberías dormir también.",
"Me deja con unas palmaditas en la cabeza. Casi todos son más altos que yo, pero él no desperdicia un momento para hacermelo notar. ",
"…",
"Debería dormir entonces."]
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

