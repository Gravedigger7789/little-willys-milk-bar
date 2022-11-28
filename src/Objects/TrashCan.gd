extends Coaster


const BREAK_SOUNDS := [
	preload("res://assets/music/glass-break-1.wav"), 
	preload("res://assets/music/glass-break-2.wav"),
]

onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


func _on_Draggable_put_down(area: Area2D) -> void:
	._on_Draggable_put_down(area)
	if area.has_method("trash"):
		audio_stream_player.stream = BREAK_SOUNDS[randi() % BREAK_SOUNDS.size()]
		audio_stream_player.play(0.6)
		area.trash()
