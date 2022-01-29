extends Spatial


func _on_Draggable_drag_move(_node, cast):
	set_translation(cast['position'])


func _on_Draggable_drag_start(_node):
	set_rotation(Vector3(0,0,0))
