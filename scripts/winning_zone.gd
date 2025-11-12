extends Area2D
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) :
	get_tree().change_scene_to_file("res://scenes/victory.tscn")
	


func _on_timer_timeout() -> void:
	pass
	
	



	
	
