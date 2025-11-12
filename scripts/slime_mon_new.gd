extends Area2D
class_name Slime

# Path to the Game Over scene 
const GAME_OVER = "res://scenes/game_over.tscn"

# When the player touches this enemy → go to Game Over screen
#func _on_area_2d_body_entered(body: Node2D) -> void:
	#if body.name == "Player":
		#get_tree().change_scene_to_file(GAME_OVER)


#func _on_hit_box_body_entered(body: CharacterBody2D) -> void:
	#if body.is_in_group("player"):
			#body.die()
			#queue_free()


func _on_hit_box_area_entered(area: Area2D) -> void:
	if area is Bullet:
		queue_free()
		area.queue_free()
