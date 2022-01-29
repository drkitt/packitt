extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	print('huh does this work')


func _on_Draggable_drag_move(_node, cast):
	set_translation(cast['position'])
