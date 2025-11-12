extends Node2D

const SPEED = 200.0
const FOLLOW_DISTANCE = 300.0 
var direction = 1 

@onready var player = get_node("res://scenes/player.tscn") 

func _physics_process(delta: float) -> void:
	
	#if not is_on_floor():
		#velocity += get_gravity() * delta

	var distance_to_player = player.global_position.distance_to(global_position)

	if distance_to_player <= FOLLOW_DISTANCE:
		if player.global_position.x > global_position.x:
			direction = 1
		else:
			direction = -1
	else:
		if is_on_wall():
			direction *= -1

	velocity.x = direction * SPEED

	move_and_slide()
