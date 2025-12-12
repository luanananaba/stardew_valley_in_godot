extends CharacterBody2D


var direction : Vector2
var speed := 50


func _physics_process(_delta : float) -> void:
	_move()


func _move() -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	
	move_and_slide()


func tool_use_emit():
	print('tool')
