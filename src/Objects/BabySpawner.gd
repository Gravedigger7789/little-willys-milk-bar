extends Node2D


export(PackedScene) var baby_scene = preload("res://src/Characters/Baby.tscn")

onready var spawn_timer: Timer = $SpawnTimer
onready var spawn_position: Position2D = $SpawnPosition


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_timer.start(rand_range(1, 5.0))


func _on_SpawnTimer_timeout() -> void:
	var baby_instance = baby_scene.instance()
	spawn_position.add_child(baby_instance)
	baby_instance.position = spawn_position.position - baby_instance.sit_position.position
	var _connected = baby_instance.connect("satisfied", self, "_on_Baby_Satisfied")


func _on_Baby_Satisfied(_happiness_level: float) -> void:
	spawn_timer.start(rand_range(2.0, 10.0))
