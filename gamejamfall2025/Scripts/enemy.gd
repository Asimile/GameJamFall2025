extends CharacterBody2D

var move_speed: float = 10
#var enemy_health: int = 2

@onready var ENEMY_SPRITE = $PlaceholderSprite

func _physics_process(delta):
	#Access the player through the overarching parent node
	var player = get_parent().get_node("Player")
	
	ENEMY_SPRITE.look_at(player.global_position)
	# This is only for the godot logo, to make it face the player before we use our own asset
	ENEMY_SPRITE.rotation_degrees -= 90
	
	#By telling the enemy what its velocity is, move_and_slide() will handle the rest
	velocity = ((player.global_position - global_position).normalized()) * move_speed
	
	#Handles physics stuff
	move_and_slide()
	
	##For when enemies can die. We should show their health somehow, bar or number
	#ENEMY_HEALTH.text = str(enemy_health)
	
	##Pretty self explanatory
	#if enemy_health <= 0:
		#die()

func die():
	#Deletes itself from the scene
	queue_free()
