extends CharacterBody2D

const SPEED: float = 200.0
var msgString: String = "poop"
var addScore: bool = false
signal update_score(msg: String)






func _physics_process(delta):
	var _collision_info = move_and_collide(Vector2.DOWN.normalized() * SPEED * delta)
	if _collision_info != null:
		addScore = true
		
		
		var body := _collision_info.get_collider()
		print("YOU COLLIDED WITH " + body.name)
		self.queue_free()
		body.free()
	
	if addScore:
		msgString = "hey"
		update_score.emit(msgString)
		print("add")
		addScore = false

