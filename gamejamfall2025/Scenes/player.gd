extends CharacterBody2D

var MOVEMENT_SPEED = 5

func _ready():
	pass

# This is code that runs every single frame
func _physics_process(delta):
	
	# Handles moving the player up, down, left, and right. Relies on move_and_slide() at the end of the function
	if Input.is_action_pressed("move_up"):
		position.y -= MOVEMENT_SPEED
	if Input.is_action_pressed("move_down"):
		position.y += MOVEMENT_SPEED
	if Input.is_action_pressed("move_left"):
		position.x -= MOVEMENT_SPEED
	if Input.is_action_pressed("move_right"):
		position.x += MOVEMENT_SPEED
		
		
	
func _animate():
	pass


# Creates our projectile where we want it and gives it the proper direction
func shoot_projectile():
	pass
	## Creates a potion scene
	#var potion_instance = Potion.instantiate()
	## Adds that 
	#get_parent().add_child(potion_instance)
	## Handles potion spawn position and direction
	#potion_instance.global_position = THROW_POSITION.global_position
	#var target = get_global_mouse_position()
	#var direction_to_mouse = potion_instance.global_position.direction_to(target).normalized()
	#potion_instance.set_direction(direction_to_mouse)
	## Assigns the newly made potion its type
	#potion_instance.potion_type = next_potion
	## Picks the next random potion for the player
	#pick_random_potion()
	
func die():
	pass
