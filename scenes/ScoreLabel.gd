extends Label

@onready var enemy = get_parent().get_node("Enemy")
func _ready():
	print(enemy.get_signal_list())
#	self.connect(en)
	
func _on_update_score(msg: String):
	self.text = msg
