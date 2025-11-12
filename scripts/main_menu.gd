extends Control

# Scene paths
const GAME_SCENE = "res://game.tscn"

func _ready():
	pass

# Called when Start button is pressed → load game scene
func _on_start_pressed() :
	get_tree().change_scene_to_file(GAME_SCENE)

# Called when Exit button is pressed → quit game
func _on_exit_pressed() :
	get_tree().quit()
