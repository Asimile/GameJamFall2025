extends Area2D

var direction: Vector2 = Vector2.ZERO
var projectile_speed = 30

func _physics_process(delta):
	if direction != Vector2.ZERO:
		var velocity = direction * projectile_speed
		global_position += velocity
		
func set_direction(direction: Vector2):
	self.direction = direction
