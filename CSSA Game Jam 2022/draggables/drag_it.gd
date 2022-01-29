extends Spatial


func _on_Draggable_drag_move(_node, cast):
	set_translation(cast['position'])
