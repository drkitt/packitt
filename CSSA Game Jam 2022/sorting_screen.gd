extends WorldEnvironment


func _on_StartButton_pressed() -> void:
	$Wiggler.wiggling = true
	$Timer.start()
	$UI/StartButton.hide()


func _on_Timer_timeout():
	$Wiggler.wiggling = false
	$UI/EndScreen.show()
