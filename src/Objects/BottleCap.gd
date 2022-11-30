tool
extends Draggable

const COLOR_DICT := {
	"Red": preload("res://assets/bottle/bottle-lid-red.png"),
	"Blue": preload("res://assets/bottle/bottle-lid-blue.png"),
	"Green": preload("res://assets/bottle/bottle-lid-green.png"),
}

export(String, "Red", "Blue", "Green") var color: String = "Blue" setget set_color


func _ready() -> void:
	set_color(color)


func set_color(value: String) -> void:
	color = value
	if is_inside_tree():
		sprite.texture = COLOR_DICT[color]
		sprite_shadow.texture = COLOR_DICT[color]


func _put_down() -> void:
	._put_down()
	var tween := create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	# warning-ignore:return_value_discarded
	tween.tween_property(self, "global_position", _start_position, 0.25)
