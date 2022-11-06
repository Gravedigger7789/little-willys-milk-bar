extends KinematicBody2D

var speed := 300
var velocity := Vector2()

func _process(_delta: float) -> void:
	var horizontal_input := Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var vertical_input := Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = Vector2(horizontal_input, vertical_input).normalized() * speed
	velocity = move_and_slide(velocity)
