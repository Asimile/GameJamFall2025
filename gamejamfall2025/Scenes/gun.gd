extends Node2D

func _physics_process(delta):
	pass
	
	#I think the gun script shouldn't handle its own rotation. Player.gd should do that using its pivot point
	#gun script should I think just handle creating a projectile and tellling it where to go
