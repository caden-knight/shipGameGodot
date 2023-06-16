extends RigidBody2D


# Called when the node enters the scene tree for the first time.
@onready var ship: RigidBody2D = $"."
@onready var shipSprite: = $Sprite2D
#const mouseOffet: Vector2 = ship.texture_size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ship.position = get_global_mouse_position()
