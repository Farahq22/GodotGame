extends CharacterBody2D

class_name Player
const SPEED = 100.0
const JUMP_VELOCITY = -250.0
const GAME_OVER = "res://scenes/game_over.tscn"

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("move_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
# Player's GDScript

var is_dead = false

@export var game_over_scene_path: String = "res://scenes/game_over_scene.tscn"

func die():
	if is_dead:
		return
		
	is_dead = true
	
	set_process(false)
	set_physics_process(false)
	
	$CollisionShape2D.disabled = true 
	
	# Wait for a brief moment (adjust if you add animations/sounds)
	await get_tree().create_timer(0.5).timeout
	
	go_to_game_over()
	
func go_to_game_over():
	if game_over_scene_path and FileAccess.file_exists(GAME_OVER):
		get_tree().change_scene_to_file(GAME_OVER)
	else:
		# Fallback if the path is invalid
		get_tree().reload_current_scene()
