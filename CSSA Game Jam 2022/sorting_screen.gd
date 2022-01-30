extends WorldEnvironment


func _on_StartButton_pressed() -> void:
	$Wiggler.wiggling = true
	$Timer.start()
	$UI/StartButton.hide()
	$AudioStreamPlayer.stream = preload("res://music/francis-battle.mp3")
	$AudioStreamPlayer.volume_db = -15
	$AudioStreamPlayer.play()
#	$Trapdoor/CollisionShape.disabled = true
#	$Trapdoor.queue_free()
	$Trapdoor.translation.y = -1


func _on_Timer_timeout():
	$Wiggler.wiggling = false
	$UI/EndScreen.show()
	$AudioStreamPlayer.stream = preload("res://music/joshua-mclean_celebrate.ogg")
	$AudioStreamPlayer.volume_db = -15
	$AudioStreamPlayer.play()
	$Timer.stop()

func _on_ReplayButton_pressed():
	var result = get_tree().change_scene("res://SortingScreen.tscn")
	match result:
		ERR_CANT_OPEN:
			print_debug("Could not open sorting screen")
		ERR_CANT_CREATE:
			print_debug("Could not instantiate sorting screen")
