extends Draggable


onready var top_snap_position: Position2D = $TopSnapPosition


func _on_Draggable_put_down(area: Area2D) -> void:
	area.snap_to_position(top_snap_position.global_position)
	area.get_parent().remove_child(area)
	area.get_node("CollisionShape2D").disabled = true
	add_child(area)
