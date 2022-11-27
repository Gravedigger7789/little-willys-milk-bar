extends Draggable


signal bottle_filled
signal drink_up(fill, flavor, cap)


var current_fill := 0.0
var milk_type_max := -50.0
var closed := false
var milk_flavor: String
var cap: String

onready var top_snap_position: Position2D = $TopSnapPosition
onready var milk: Sprite = $BackBufferCopy/Milk
onready var animation_player: AnimationPlayer = $AnimationPlayer
onready var milk_move_distance = milk.position.y - sprite.position.y
onready var milk_type: Sprite = $BackBufferCopy/MilkType
onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
onready var top: Sprite = $Sprite/Top
onready var top_shadow: Sprite = $SpriteShadow/Top


func _on_Draggable_put_down(area: Area2D) -> void:
	top.texture = area.sprite.texture
	top_shadow.texture = top.texture
	cap = area.color
	top.visible = true
	closed = true


func _moved_object() -> void:
	animation_player.play("Fill")


func fill(value: float, color: Color, texture: Texture, flavor: String) -> void:
	if current_fill >= 1.0:
		_draggable = true
		emit_signal("bottle_filled")
	else:
		_draggable = false
		milk.modulate = color
		milk_type.texture = texture
		milk_flavor = flavor
		current_fill = (milk_move_distance - milk.position.y) / milk_move_distance
		milk.position.y = max(milk.position.y - value, sprite.position.y)
		animation_player.play("Fill")


func push(distance: Vector2, strength: float) -> void:
#		collision_shape_2d.disabled = true
		var tween := create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
		# warning-ignore:return_value_discarded
		tween.tween_property(self, "position", position + distance, strength)
		var _connected = tween.connect("finished", self, "_on_Bottle_Finish_Push")
		animation_player.play("Fill")


func _on_Bottle_Finish_Push() -> void:
	emit_signal("drink_up", current_fill, milk_flavor, cap)
