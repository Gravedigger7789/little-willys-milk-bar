extends Coaster

var launch_bar_offset := 64
var launch_distance := Vector2(1375, 0)
var bottle: Area2D = null

onready var launch_bar: Control = $LaunchBar
onready var launch_button: TextureButton = $LaunchButton


func _ready() -> void:
	launch_bar.toggle(false)


func _on_Draggable_put_down(area: Area2D) -> void:
	if !bottle:
		._on_Draggable_put_down(area)
		bottle = area
	#	area.get_node("CollisionShape2D").disabled = true
		var sprite_height = area.sprite.texture.get_height() * area.sprite.scale.y
		launch_bar.rect_position.y = -(launch_bar_offset + sprite_height)
		launch_bar.toggle(true)
		launch_button.visible = true


func _on_Draggable_picked_up(area: Area2D) -> void:
	if bottle == area:
		bottle = null
		launch_bar.toggle(false)
		launch_button.visible = false


func _on_LaunchButton_pressed() -> void:
	launch_bar.stop()
	launch_button.visible = false


func _on_LaunchBar_activated(strength: float) -> void:
	if bottle and bottle.has_method("push"):
		var launch_position = launch_distance * strength
		var launch_strength = max(2.0 * (1 - strength), 0.5)
		bottle.push(launch_position, launch_strength)
		bottle = null
	
