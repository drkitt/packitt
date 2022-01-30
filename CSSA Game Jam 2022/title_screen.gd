extends MarginContainer


func _on_Play_button_pressed() -> void:
	var result = get_tree().change_scene("res://SortingScreen.tscn")
	match result:
		ERR_CANT_OPEN:
			print_debug("Could not open sorting screen")
		ERR_CANT_CREATE:
			print_debug("Could not instantiate sorting screen")


func _on_Quit_button_pressed() -> void:
	get_tree().quit()
