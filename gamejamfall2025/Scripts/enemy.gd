extends CharacterBody2D

var move_speed: float = 30
#var enemy_health: int = 3
@onready var ENEMY_SPRITE = $AnimatedSprite2D

func _physics_process(delta):
	#Access the player through the overarching parent node
	var player = get_parent().get_node("Player")
	
	ENEMY_SPRITE.play('walk')
	
	
	#By telling the enemy what its velocity is, move_and_slide() will handle the rest
	velocity = ((player.global_position - global_position).normalized()) * move_speed
	
	#Flipping enemy sprite based on player's relative x position
	var player_direction = player.global_position.x - global_position.x
	if player_direction < 0:
		ENEMY_SPRITE.flip_h = true
	elif player_direction > 0:
		ENEMY_SPRITE.flip_h = false
	
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
