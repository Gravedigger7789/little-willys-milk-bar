tool
extends Draggable


export(String, "Red", "Blue", "Green") var color: String = "Blue" setget set_color

const color_dict := { \
	"Red" : preload("res://assets/bottle/bottle-lid-red.png"), \
	"Blue" : preload("res://assets/bottle/bottle-lid-blue.png"), \
	"Green" : preload("res://assets/bottle/bottle-lid-green.png"), \
	}


func _ready() -> void:
	set_color(color)


func set_color(value: String) -> void:
	color = value
	if is_inside_tree():
		sprite.texture = color_dict[color]
		sprite_shadow.texture = color_dict[color]
