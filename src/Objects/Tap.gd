tool
extends Node2D


export(String, "Berry", "Chocolate", "Regular") var handle_type: String = "Chocolate" setget set_handle_type

const HANDLE_DICT := { \
	"Berry" : preload("res://assets/tap/milk-tap-handle-berry.png"), \
	"Chocolate" : preload("res://assets/tap/milk-tap-handle-choco.png"), \
	"Regular" : preload("res://assets/tap/milk-tap-handle-reg.png"), \
	}
const SPOUT_TEXTURE := preload("res://assets/tap/milk-tap-spout-straight.png")
const SPOUT_TILTED_TEXTURE := preload("res://assets/tap/milk-tap-spout-tilt.png")

var pouring := false

onready var handle: Area2D = $Handle
onready var handle_sprite: Sprite = $Handle/Sprite
onready var spout: Sprite = $Spout


func _ready() -> void:
	set_handle_type(handle_type)


func set_handle_type(value: String) -> void:
	handle_type = value
	if is_inside_tree():
		handle_sprite.texture = HANDLE_DICT[handle_type]


func _on_Handle_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("touch"):
		var areas := handle.get_overlapping_areas()
		var is_on_top := true
		for area in areas:
			if not is_greater_than(area) and area.is_visible_in_tree():
				is_on_top = false
		if is_on_top:
			get_tree().set_input_as_handled()
			_toggle_pour()


func _toggle_pour() -> void:
	if !pouring:
		pouring = true
		handle.rotate(deg2rad(-30))
		spout.texture = SPOUT_TILTED_TEXTURE
	else:
		pouring = false
		handle.rotate(deg2rad(30))
		spout.texture = SPOUT_TEXTURE
