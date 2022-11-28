extends Coaster


func _on_Draggable_put_down(area: Area2D) -> void:
	._on_Draggable_put_down(area)
	if area.has_method("trash"):
		area.trash()
