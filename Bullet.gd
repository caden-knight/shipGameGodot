extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta):
	var _collision_info = move_and_collide(Vector2.UP * SPEED * delta)
