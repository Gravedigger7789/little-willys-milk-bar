extends Node2D

export(PackedScene) var bottle_scene = preload("res://src/Objects/Bottle.tscn")

onready var position_1: Position2D = $Position1
onready var position_2: Position2D = $Position2
onready var position_3: Position2D = $Position3


func _ready() -> void:
	_spawn_bottles()


func _spawn_bottle(position_2d: Position2D) -> void:
	var bottle_instance = bottle_scene.instance()
	position_2d.add_child(bottle_instance)
	var _connected = bottle_instance.connect("drink_up", self, "_on_Bottle_Drunk")
	_connected = bottle_instance.connect("trashed", self, "_on_Bottle_Trashed")


func _on_Bottle_Drunk(_fill: float, _flavor: String, _cap: String) -> void:
	yield(get_tree().create_timer(1.5), "timeout")
	_spawn_bottles()


func _on_Bottle_Trashed() -> void:
	yield(get_tree().create_timer(0.75), "timeout")
	_spawn_bottles()


func _spawn_bottles() -> void:
	if position_1.get_child_count() == 0:
		_spawn_bottle(position_1)
	if position_2.get_child_count() == 0:
		_spawn_bottle(position_2)
	if position_3.get_child_count() == 0:
		_spawn_bottle(position_3)
