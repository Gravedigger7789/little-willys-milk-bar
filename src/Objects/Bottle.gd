extends Draggable


signal bottle_filled


var current_fill := 0.0
var milk_type_max := -50.0
var closed := false

onready var top_snap_position: Position2D = $TopSnapPosition
onready var milk: Sprite = $BackBufferCopy/Milk
onready var animation_player: AnimationPlayer = $AnimationPlayer
onready var milk_move_distance = milk.position.y - sprite.position.y
onready var milk_type: Sprite = $BackBufferCopy/MilkType
onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


func _on_Draggable_put_down(area: Area2D) -> void:
	area.snap_to_position(top_snap_position.global_position)
	area.get_parent().remove_child(area)
	area.get_node("CollisionShape2D").disabled = true
	sprite.add_child(area)
	closed = true

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


func push(distance: Vector2, strength: float) -> void:
		collision_shape_2d.disabled = true
		var tween := create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
		# warning-ignore:return_value_discarded
		tween.tween_property(self, "position", position + distance, strength)
		var _connected = tween.connect("finished", self, "_on_Bottle_Finish_Push")
		animation_player.play("Fill")

func _on_Bottle_Finish_Push() -> void:
	if closed:
		print("success")
	else:
		print("broken")
