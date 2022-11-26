extends Draggable


signal bottle_filled


var current_fill := 0.0
var milk_type_max := -50.0

onready var top_snap_position: Position2D = $TopSnapPosition
onready var milk: Sprite = $BackBufferCopy/Milk
onready var animation_player: AnimationPlayer = $AnimationPlayer
onready var milk_move_distance = milk.position.y - sprite.position.y
onready var milk_type: Sprite = $BackBufferCopy/MilkType


func _on_Draggable_put_down(area: Area2D) -> void:
	area.snap_to_position(top_snap_position.global_position)
	area.get_parent().remove_child(area)
	area.get_node("CollisionShape2D").disabled = true
	sprite.add_child(area)

#func _on_Draggable_picked_up(area: Area2D) -> void:
#	area.position = area.global_position
#	remove_child(area)
#	var bottle_caps_node = get_tree().get_root().get_node("World/BottleCaps")
#	bottle_caps_node.add_child(area)


func _moved_object() -> void:
	animation_player.play("Fill")


func fill(value: float, color: Color, texture: Texture) -> void:
	if current_fill >= 1.0:
		_draggable = true
		emit_signal("bottle_filled")
	else:
		_draggable = false
		milk.modulate = color
		milk_type.texture = texture
		current_fill = (milk_move_distance - milk.position.y) / milk_move_distance
		milk.position.y = max(milk.position.y - value, sprite.position.y)
		animation_player.play("Fill")

