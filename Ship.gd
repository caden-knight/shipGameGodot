extends RigidBody2D


@onready var ship: RigidBody2D = $"."
@onready var shipSprite: = $Sprite2D
@onready var mouseOffset: Vector2 = shipSprite.texture.get_size()

@onready var bulletRef: PackedScene = preload("res://Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	ship.position = get_global_mouse_position()
	
	
	if Input.is_action_just_pressed("Shoot"):
		shoot()

func shoot():
	var bullet = bulletRef.instantiate()
	get_parent().add_child(bullet)
	bullet.position.x = ship.position.x
	bullet.position.y = ship.position.y - 100 
	print("shoot")
	
