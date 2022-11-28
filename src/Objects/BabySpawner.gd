extends Node2D

signal spawned_baby(baby)

export(PackedScene) var baby_scene = preload("res://src/Characters/Baby.tscn")

const CRYING_SOUNDS := [
	preload("res://assets/music/baby-cry-1.wav"),
	preload("res://assets/music/baby-cry-2.wav"),
	preload("res://assets/music/baby-cry-3.wav"),
]

onready var spawn_timer: Timer = $SpawnTimer
onready var spawn_position: Position2D = $SpawnPosition
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


func start_spawning() -> void:
	spawn_timer.start(rand_range(1, 5.0))


func stop_spawning() -> void:
	spawn_timer.stop()


func _on_SpawnTimer_timeout() -> void:
	var baby_instance = baby_scene.instance()
	spawn_position.add_child(baby_instance)
	baby_instance.position = spawn_position.position - baby_instance.sit_position.position
	emit_signal("spawned_baby", baby_instance)
	var _connected = baby_instance.connect("satisfied", self, "_on_Baby_Satisfied")


func _on_Baby_Satisfied(score: float) -> void:
	if score <= 0:
		audio_stream_player.volume_db = 2
		audio_stream_player.stream = CRYING_SOUNDS[randi() % CRYING_SOUNDS.size()]
		audio_stream_player.play(0.25)
	spawn_timer.start(rand_range(2.0, 10.0))
