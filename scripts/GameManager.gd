extends Node2D

@onready var enemy_ref: PackedScene = preload("res://Enemy.tscn")

func _on_enemy_spawner_timeout():
	print("enemy")
	spawnEnemy()
	
func spawnEnemy():
	var enemy = enemy_ref.instantiate()
	add_child(enemy)
	enemy.position = Vector2(400, 300)
	print("enemy")
