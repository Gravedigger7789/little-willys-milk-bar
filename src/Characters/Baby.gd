tool
extends Node2D


export var color: Color = Color(1, 1, 1, 1) setget set_color


onready var body: Sprite = $Body
onready var arms: Sprite = $Arms
onready var face: Sprite = $Face
onready var hair: Sprite = $Hair


func _ready() -> void:
	set_color(color)


func set_color(value: Color) -> void:
	color = value
	if is_inside_tree():
		if body:
			body.modulate = color
		if arms:
			arms.modulate = color
