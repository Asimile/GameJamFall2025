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
