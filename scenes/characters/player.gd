extends CharacterBody2D


var direction : Vector2
var speed := 50


func _physics_process(_delta : float) -> void:
	_move()
	_animate()


func _move() -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	
	move_and_slide()


func _animate() -> void:
	if direction:
		var direction_animation = Vector2(round(direction.x), round(direction.y))
		
		$Animation/AnimationTree.set(
			"parameters/MoveStateMachine/Walk/blend_position", direction_animation
		)
	
	# My attempt to learn it.
	#if direction == Vector2.RIGHT:
		#$Animation/AnimationTree.set("parameters/MoveStateMachine/Walk/blend_position", Vector2.RIGHT)
	#if direction == Vector2.LEFT:
		#$Animation/AnimationTree.set("parameters/MoveStateMachine/Walk/blend_position", Vector2.LEFT)
	#if direction == Vector2.UP:
		#$Animation/AnimationTree.set("parameters/MoveStateMachine/Walk/blend_position", Vector2.UP)
	#if direction == Vector2.DOWN:
		#$Animation/AnimationTree.set("parameters/MoveStateMachine/Walk/blend_position", Vector2.DOWN)


func tool_use_emit():
	print('tool')
