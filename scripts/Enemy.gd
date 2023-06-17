extends CharacterBody2D

const SPEED: float = 200.0

func _physics_process(delta):
	move_and_collide(Vector2.DOWN.normalized() * SPEED * delta)
