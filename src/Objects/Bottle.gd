extends Draggable


onready var top_snap_position: Position2D = $TopSnapPosition


func _on_Bottle_area_entered(area: Draggable) -> void:
	if area and !area.is_connected("put_down", self, "_on_Draggable_put_down"):
		var _connected = area.connect("put_down", self, "_on_Draggable_put_down")
	_tween_outline(0.0, 1.0)


func _on_Bottle_area_exited(area: Draggable) -> void:
	if area and area.is_connected("put_down", self, "_on_Draggable_put_down"):
		area.disconnect("put_down", self, "_on_Draggable_put_down")
	_tween_outline(1.0, 0.0)


func _tween_outline(from: float, to: float):
	var tween := create_tween() \
		.set_trans(Tween.TRANS_LINEAR) \
		.set_ease(Tween.EASE_OUT)
	# warning-ignore:return_value_discarded
	tween.tween_method(self, "_set_outline_alpha", from, to, 0.5)


func _set_outline_alpha(value: float) -> void:
	outline_color.a = value
	sprite.material.set_shader_param("outline_color", outline_color)


func _on_Draggable_put_down(area: Draggable) -> void:
	area.snap_to_position(top_snap_position.global_position)
	area.get_parent().remove_child(area)
	area.get_node("CollisionShape2D").disabled = true
	add_child(area)
