extends MarginContainer


func _on_Play_button_pressed() -> void:
	get_tree().change_scene("res://SortingScreen.tscn")


func _on_Quit_button_pressed() -> void:
	get_tree().quit()
