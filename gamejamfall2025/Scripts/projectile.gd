extends Area2D

var direction: Vector2 = Vector2.ZERO
var projectile_speed = 30

func _physics_process(delta):
	#If the projectile has a direction given to it, go that way
	if direction != Vector2.ZERO:
		var velocity = direction * projectile_speed
		global_position += velocity
		
func set_direction(direction: Vector2):
	#Where our projectile gets given its direction (from gun.gd)
	self.direction = direction
