extends Area2D

#@export var charge: int = 20 
#var player_energy: int = 100

#signal collected(charge)

#func _ready():
	#$CollisionShape2D.disabled = false



#func _on_Battery_body_entered(body):
	#if body.name == "player":  
		#emit_signal("collected", charge)
		#queue_free()    
		
#func _on_Battery_collected(charge):
	#player_energy += charge
	#print("Player energy: ", player_energy)


func _on_body_entered(CharacterBody2D) :
	queue_free()
	
