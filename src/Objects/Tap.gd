tool
extends Node2D

const HANDLE_DICT := {
	"Berry": preload("res://assets/tap/milk-tap-handle-berry.png"),
	"Chocolate": preload("res://assets/tap/milk-tap-handle-choco.png"),
	"Regular": preload("res://assets/tap/milk-tap-handle-reg.png"),
}
const COLOR_DICT := {
	"Berry": Color.pink,
	"Chocolate": Color8(93, 51, 35),
	"Regular": Color.white,
}
const SPOUT_TEXTURE := preload("res://assets/tap/milk-tap-spout-straight.png")
const SPOUT_TILTED_TEXTURE := preload("res://assets/tap/milk-tap-spout-tilt.png")
const FILL_SPEED := 150

export(String, "Berry", "Chocolate", "Regular") var handle_type: String = "Chocolate" setget set_handle_type

var pouring := false
var bottle: Area2D
var bottle_closed := false

onready var handle: Area2D = $Handle
onready var handle_sprite: Sprite = $Handle/Sprite
onready var spout: Sprite = $Spout
onready var pour: Sprite = $Spout/Pour
onready var bottle_detector: Area2D = $BottleDetector
onready var animation_player: AnimationPlayer = $AnimationPlayer
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


func _ready() -> void:
	set_handle_type(handle_type)


func _physics_process(delta: float) -> void:
	if pouring and bottle and !bottle_closed:
		bottle.fill(
			delta * FILL_SPEED, COLOR_DICT[handle_type], HANDLE_DICT[handle_type], handle_type
		)
		animation_player.play("Pour")


func set_handle_type(value: String) -> void:
	handle_type = value
	if is_inside_tree() and handle_sprite:
		handle_sprite.texture = HANDLE_DICT[handle_type]


func _on_Handle_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("touch"):
		if bottle and !pouring and !bottle_closed:
			get_tree().set_input_as_handled()
			_toggle_pour()


func _toggle_pour() -> void:
	if !pouring:
		audio_stream_player.play(1.5)
		pouring = true
		handle.rotate(deg2rad(-30))
		spout.texture = SPOUT_TILTED_TEXTURE
		pour.visible = true
		pour.modulate = COLOR_DICT[handle_type]
	else:
		pouring = false
		handle.rotate(deg2rad(30))
		spout.texture = SPOUT_TEXTURE
		pour.visible = false


func _on_BottleDetector_area_entered(area: Area2D) -> void:
	if !bottle:
		bottle = area
		if bottle:
			if !bottle.is_connected("bottle_filled", self, "_on_Bottle_filled"):
				var _connected = bottle.connect("bottle_filled", self, "_on_Bottle_filled")
			if !bottle.is_connected("bottle_closed", self, "_on_Bottle_closed"):
				var _connected = bottle.connect("bottle_closed", self, "_on_Bottle_closed")
			bottle_closed = bottle.closed


func _on_BottleDetector_area_exited(area: Area2D) -> void:
	if bottle and bottle == area:
		if bottle.is_connected("bottle_filled", self, "_on_Bottle_filled"):
			bottle.disconnect("bottle_filled", self, "_on_Bottle_filled")
		if bottle.is_connected("bottle_closed", self, "_on_Bottle_closed"):
			bottle.disconnect("bottle_closed", self, "_on_Bottle_closed")
		bottle = null
		bottle_closed = false


func _on_Bottle_filled() -> void:
	_toggle_pour()


func _on_Bottle_closed() -> void:
	bottle_closed = true
	if pouring:
		pouring = false
		handle.rotate(deg2rad(30))
		spout.texture = SPOUT_TEXTURE
		pour.visible = false
