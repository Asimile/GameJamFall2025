extends CharacterBody2D

var INPUT_VECTOR = Vector2(0, 0)

var MOVEMENT_SPEED = 200

var mouse_position: Vector2

@onready var GUN_PIVOT = $GunPivot
@onready var GUN_SPRITE = $GunPivot/gun/GunSprite

func _ready():
	pass

# This is code that runs every single frame
func _physics_process(delta):
	mouse_position = get_global_mouse_position()
	
	#get input direction
	INPUT_VECTOR.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	INPUT_VECTOR.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	velocity = INPUT_VECTOR.normalized() * MOVEMENT_SPEED
	
	move_and_slide()
		
	handle_gun_position(mouse_position)
	
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
	

func handle_gun_position(mouse_position):
	GUN_PIVOT.look_at(get_global_mouse_position())
	if (mouse_position.x < position.x):
		GUN_SPRITE.flip_v = true
	else:
		GUN_SPRITE.flip_v = false

func die():
	pass
