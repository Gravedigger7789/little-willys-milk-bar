extends Coaster


var launch_bar_offset = 64

onready var launch_bar: Control = $LaunchBar


func _ready() -> void:
	launch_bar.toggle(false)


func _on_Draggable_put_down(area: Area2D) -> void:
	._on_Draggable_put_down(area)
	var sprite_height = area.sprite.texture.get_height() * area.sprite.scale.y
	launch_bar.rect_position.y = -(launch_bar_offset + sprite_height)
	launch_bar.toggle(true)


func _on_Draggable_picked_up(_area: Area2D) -> void:
	launch_bar.toggle(false)
