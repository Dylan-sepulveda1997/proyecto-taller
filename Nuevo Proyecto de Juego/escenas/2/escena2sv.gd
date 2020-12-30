extends Control
var dialog =["SOY LIBREEEEEEEEEE. MALDITO CONTROL DE TRES HORAS CASI NO DORMI DE LOS NERVIOS PEEO SOBREVIVI FINALMENTE SALVARE CÁLCULO WOOOOO ¡Definitivamente debería conseguirle algo a Sofía para agradecerle! Va a volver más tarde de su presentación de proyecto, probablemente lo apreciará."
 
,"Impulsivamente decidí salir a comprar ingredientes para galletas, incluidas unas decoraciones de perlas comestibles rosadas que definitivamente combinarán con el traje con el que salió. No hay duda de que le encantará."
,"..."
,"Resultó que llegó al departamento llorando."
,"MC:..." 
,"SV: *sniff* *sniff*"
,"MC:...¿ Quieres hablar?"
,"Me guío para que nos sentaramos." 
,"SV: ...*sniff*"
,"MC: oye, no tiene por qué ser ahora, si prefieres esperar o hacer algo más"
,"SV: Está, bien. *Sniff* Es que, "
,"SV: *sniff* es que el profe es. Un imbecil que no sabe . Dar feedback como la gente normal *sniff*."
,"MC: oh."
,"SV: si, oh, Jaja *sniff*"
,"MC: se puso idiota en la clase o algo?"
,"SV: que se yo que le pasaba al profe, pero le dio con humillarme en, frente del curso porque no le gusto *sniff* la presentación que hice. Le acepto que tenía mucho que mejorar pero que ***** como te pones a gritar por *sniff * "
,"Me pareció que no podía hacer mucho entonces, pero si le podía ofrecer un abrazo. No dijo nada, solo lo aceptó. Nos quedamos ahí un rato hasta que se escuchó una alarma de fondo."
,"MC: Aah, espera dame un minuto"
,"SV:?"
,"Si son de ellas, supongo que es correcto que las tenga, ¿No?"
,"MC: … te hice galletas, para agradecerte por lo del otro día."
,"SV: … *sniff* aw…. *Sniff* pero no me las merezco."
,"MC: Me ayudaste mucho el otro día y estudias todo el día prácticamente, como no te vas a merecer unas galletas"
,"SV: … si son tuyas las acepto."
,"Me sonrió un poco después de eso. Nos quedamos comiendo galletas en el sofá, y ninguna se acordó de volver a sus piezas a dormir."]
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
