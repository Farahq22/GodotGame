extends Control

# When the "Retry" button is pressed → reload the main game scene
func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")

# When the "Exit" button is pressed → quit the game
func _on_exit_pressed() -> void:
	get_tree().quit()
