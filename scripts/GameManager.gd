extends Node2D

@onready var enemy_ref: PackedScene = preload("res://scenes/Enemy.tscn")

func _ready():
#	hide the mouse
	Input.set_mouse_mode(1)

func _physics_process(delta: float) -> void:
	pass

func _on_enemy_spawner_timeout():
	spawnEnemy()
	
func spawnEnemy():
	var enemy = enemy_ref.instantiate()
	var randomX: float = randf_range(100.0, 1900.0)
	add_child(enemy)
	enemy.position = Vector2(randomX, 100)
	
