extends Node2D

# preload reference to the enemy scene to instantiate
@onready var enemy_ref: PackedScene = preload("res://scenes/Enemy.tscn")

func _ready():
# hide the cursor
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

# spawn enemy once every second
func _on_enemy_spawner_timeout():
	spawnEnemy()

# instantiates an enemy 
func spawnEnemy() -> void:
	var enemy = enemy_ref.instantiate()
	var randomX: float = randf_range(100.0, 1900.0)
	add_child(enemy)
	enemy.position = Vector2(randomX, 100)
	



