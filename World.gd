extends Node


const DATA_PATH = "user://data.json"
var data := {}

var current_score := 0.0 
var high_score := 0.0

onready var baby_spawner: Node2D = $Bar/Stools/BabySpawner
onready var baby_spawner_2: Node2D = $Bar/Stools/BabySpawner2
onready var baby_spawner_3: Node2D = $Bar/Stools/BabySpawner3
onready var score_label: Label = $HBoxContainer/Label2
onready var high_score_label: Label = $Background/Wanted/HighScore
onready var camera_2d: Camera2D = $Camera2D


func _enter_tree() -> void:
	var file := File.new()
	if file.file_exists(DATA_PATH):
		var open = file.open(DATA_PATH, File.READ)
		if open == OK:
			while file.get_position() < file.get_len():
				data = parse_json(file.get_line())
			file.close()
		for key in data:
			set(key, data[key])


func _ready() -> void:
	randomize()
	var _connected = baby_spawner.connect("spawned_baby", self, "_on_Spawned_Baby")
	_connected = baby_spawner_2.connect("spawned_baby", self, "_on_Spawned_Baby")
	_connected = baby_spawner_3.connect("spawned_baby", self, "_on_Spawned_Baby")
	high_score_label.text = str(int(high_score))


func _start_game() -> void:
	var tween := create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	# warning-ignore:return_value_discarded
	tween.tween_property(camera_2d, "position", Vector2.ZERO, 1.0)
	baby_spawner.start_spawning()
	baby_spawner_2.start_spawning()
	baby_spawner_3.start_spawning()


func _on_Spawned_Baby(baby: Node2D) -> void:
	var _connected = baby.connect("satisfied", self, "_on_Baby_Satisfied")


func _on_Baby_Satisfied(score: float) -> void:
	current_score += score
	score_label.text = str(int(current_score))
	if high_score < current_score:
		high_score = current_score
		high_score_label.text = str(int(high_score))
		save_data()


func _on_Button_pressed() -> void:
	_start_game()


func save_data() -> void:
	var file = File.new()
	file.open(DATA_PATH, File.WRITE)
	var json_data = {
		"high_score": high_score,
	}
	file.store_line(to_json(json_data))
	file.close()
