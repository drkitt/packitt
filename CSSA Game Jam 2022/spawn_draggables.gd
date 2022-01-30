extends Spatial


export(int) var num_draggables_to_spawn = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in num_draggables_to_spawn:
		var inactive_draggables: Array = $Inactive.get_children()
		var draggable = inactive_draggables[randi() % inactive_draggables.size()]
		$Inactive.remove_child(draggable)
		add_child(draggable)
	$Inactive.queue_free()
		