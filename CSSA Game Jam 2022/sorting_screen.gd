extends WorldEnvironment

export var score = 5
var fell = []

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
	$Wood_Table/Area.monitoring = true
	$Draggables.translate(Vector3(0,0.01,0))


func _on_Timer_timeout():
	$Wiggler.wiggling = false
	$UI/EndScreen.show()
	$UI/EndScreen/Label.text = """
	yay you did it :)
	Your score is %d / 5.
	""" % score
	$AudioStreamPlayer.stream = preload("res://music/joshua-mclean_celebrate.ogg")
	$AudioStreamPlayer.volume_db = -15
	$AudioStreamPlayer.play()
	$Timer.stop()


func _on_Area_body_entered(body):
	if not body in fell and body.get_parent() in $Draggables.get_children():
		score -= 1
		fell.append(body)


func _on_ReplayButton_pressed():
	var result = get_tree().change_scene("res://SortingScreen.tscn")
	match result:
		ERR_CANT_OPEN:
			print_debug("Could not open sorting screen")
		ERR_CANT_CREATE:
			print_debug("Could not instantiate sorting screen")
