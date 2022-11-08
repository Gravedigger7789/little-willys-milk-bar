extends Area2D

signal picked_up
signal put_down

export var outline_color := Color.white

var _dragging := false
var _touch_position_offset := Vector2()
var _shadow_lift_offset := Vector2(15, 15)

onready var sprite: Sprite = $Sprite
onready var sprite_start_scale := sprite.scale
onready var sprite_lift_scale := sprite_start_scale + Vector2(0.1, 0.1)
onready var sprite_shadow: Sprite = $SpriteShadow
onready var sprite_shadow_start_position := sprite_shadow.position
onready var snap_position: Position2D = $SnapPosition
onready var viewport_bounds: Rect2 = get_viewport().get_visible_rect()


func _ready() -> void:
	sprite_shadow.texture = sprite.texture


func _process(_delta: float) -> void:
	if _dragging:
		var new_position = get_global_mouse_position() - _touch_position_offset
		if (viewport_bounds.has_point(new_position)):
			_tween_position(new_position)


func _input(event: InputEvent) -> void:
	if _dragging and (event.is_action_released("touch") or \
		(event is InputEventScreenTouch and !event.is_pressed())):
		get_tree().set_input_as_handled()
		_put_down()


func _on_Draggable_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("touch"):
		get_tree().set_input_as_handled()
		_pickup()


func _on_Draggable_mouse_entered() -> void:
	if (!_dragging):
		_tween_outline(0.0, 1.0)


func _on_Draggable_mouse_exited() -> void:
	if (!_dragging):
		_tween_outline(1.0, 0.0)


func snap_to_position(value: Vector2) -> void:
	# warning-ignore:return_value_discarded
	_tween_position(value - snap_position.position)


func _pickup() -> void:
	emit_signal("picked_up", self)
	_touch_position_offset = get_global_mouse_position() - global_position
	monitorable = true
	_dragging = true

	if (sprite.scale == sprite_start_scale or \
		sprite_shadow.position == sprite_shadow_start_position):
		_tween_scale_and_shadows(sprite_lift_scale, sprite_shadow.position + _shadow_lift_offset)


func _put_down() -> void:
	_dragging = false
	monitorable = false
	emit_signal("put_down", self)

	# if the mouse is not hovering the draggable when put down, turn off the outline
	if (!self.get_viewport_rect().has_point(get_global_mouse_position())):
		_tween_outline(1.0, 0.0)

	if sprite.scale != sprite_start_scale or \
		sprite_shadow.position != sprite_shadow_start_position:
		_tween_scale_and_shadows(sprite_start_scale, sprite_shadow_start_position)


func _set_outline_alpha(value: float) -> void:
	outline_color.a = value
	sprite.material.set_shader_param("outline_color", outline_color)


func _tween_position(value: Vector2) -> void:
	var tween := create_tween() \
		.set_trans(Tween.TRANS_SINE) \
		.set_ease(Tween.EASE_OUT)
	# warning-ignore:return_value_discarded
	tween.tween_property(self, "global_position", value, 0.15)


func _tween_outline(from: float, to: float):
	var tween := create_tween() \
		.set_trans(Tween.TRANS_LINEAR) \
		.set_ease(Tween.EASE_OUT)
	# warning-ignore:return_value_discarded
	tween.tween_method(self, "_set_outline_alpha", from, to, 0.5)


func _tween_scale_and_shadows(sprite_scale: Vector2, shadow_offset: Vector2) -> void:
		var tween := create_tween() \
			.set_trans(Tween.TRANS_SINE) \
			.set_ease(Tween.EASE_OUT)
		# warning-ignore:return_value_discarded
		tween.tween_property(sprite, "scale", sprite_scale, 0.15)
		# warning-ignore:return_value_discarded
		tween.parallel().tween_property(sprite_shadow, "position", shadow_offset, 0.15)
