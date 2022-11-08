extends Area2D

export var outline_color := Color.white

onready var sprite: Sprite = $Sprite
onready var snap_position: Position2D = $SnapPosition


func _on_Coaster_area_entered(area: Area2D) -> void:
	if (!area.is_connected("put_down", self, "_on_Draggable_put_down")):
		var _connected = area.connect("put_down", self, "_on_Draggable_put_down")
	_tween_outline(0.0, 1.0)


func _on_Coaster_area_exited(area: Area2D) -> void:
	if (area.is_connected("put_down", self, "_on_Draggable_put_down")):
		area.disconnect("put_down", self, "_on_Draggable_put_down")
	_tween_outline(1.0, 0.0)


func _tween_outline(from: float, to: float):
	var tween := create_tween() \
		.set_trans(Tween.TRANS_LINEAR) \
		.set_ease(Tween.EASE_OUT)
	# warning-ignore:return_value_discarded
	tween.tween_method(self, "_outline_alpha", from, to, 0.5)


func _outline_alpha(value: float) -> void:
	outline_color.a = value
	sprite.material.set_shader_param("outline_color", outline_color)


func _on_Draggable_put_down(area: Area2D) -> void:
	area.snap_to_position(snap_position.global_position)