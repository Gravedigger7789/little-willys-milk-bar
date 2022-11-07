extends Area2D

signal picked_up

export var outline_color := Color.white

onready var sprite := $Sprite

var _dragging := false

func _physics_process(_delta: float) -> void:
	if _dragging:
		position = get_global_mouse_position()


func _input(event: InputEvent) -> void:
	if _dragging and event.is_action_released("touch"):
		_dragging = false


func _on_Draggable_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("touch"):
		get_tree().set_input_as_handled()
		emit_signal("picked_up", self)
		_dragging = true


func _on_Draggable_mouse_entered() -> void:
	var tween := create_tween() \
		.set_trans(Tween.TRANS_LINEAR) \
		.set_ease(Tween.EASE_OUT)
	tween.tween_method(self, "_outline_alpha", 0.0, 1.0, 0.5)

func _on_Draggable_mouse_exited() -> void:
	var tween := create_tween() \
		.set_trans(Tween.TRANS_LINEAR) \
		.set_ease(Tween.EASE_OUT)
	tween.tween_method(self, "_outline_alpha", 1.0, 0.0, 0.5)


func _outline_alpha(value: float) -> void:
	outline_color.a = value
	sprite.material.set_shader_param("color", outline_color)
