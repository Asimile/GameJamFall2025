extends Node2D

@export var Projectile :PackedScene

@onready var PROJECTILE_POSITION = $ProjectilePosition

func _physics_process(delta):
	#I think the gun script shouldn't handle its own rotation. Player.gd should do that using its pivot point
	#gun script should I think just handle creating a projectile and tellling it where to go
	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	var projectile_instance = Projectile.instantiate()
	get_parent().get_parent().get_parent().add_child(projectile_instance)
	projectile_instance.global_position = PROJECTILE_POSITION.global_position
	var target = get_global_mouse_position()
	var direction_to_mouse = projectile_instance.global_position.direction_to(target).normalized()
	projectile_instance.look_at(target)
	projectile_instance.set_direction(direction_to_mouse)
