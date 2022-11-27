extends Node


var current_score := 0.0


onready var baby_spawner: Node2D = $Bar/Stools/BabySpawner
onready var baby_spawner_2: Node2D = $Bar/Stools/BabySpawner2
onready var baby_spawner_3: Node2D = $Bar/Stools/BabySpawner3
onready var score_label: Label = $HBoxContainer/Label2


func _ready() -> void:
	randomize()
	var _connected = baby_spawner.connect("spawned_baby", self, "_on_Spawned_Baby")
	_connected = baby_spawner_2.connect("spawned_baby", self, "_on_Spawned_Baby")
	_connected = baby_spawner_3.connect("spawned_baby", self, "_on_Spawned_Baby")


func _on_Spawned_Baby(baby: Node2D) -> void:
	var _connected = baby.connect("satisfied", self, "_on_Baby_Satisfied")


func _on_Baby_Satisfied(score: float) -> void:
	current_score += score
	score_label.text = str(current_score)
