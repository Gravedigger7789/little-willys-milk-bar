extends Control

signal activated(strength)

export(Gradient) var gradient
export(int) var bar_fill_speed := 100

var hit_min = true
var active = true

onready var texture_progress: ProgressBar = $ProgressBar


func _physics_process(delta: float) -> void:
	if active:
		if hit_min:
			texture_progress.value += max(bar_fill_speed * delta, 1)
		else:
			texture_progress.value -= max(bar_fill_speed * delta, 1)


func toggle(value: bool) -> void:
	active = value
	visible = value
	texture_progress.value = rand_range(25, 75)


func stop() -> void:
	active = false
	emit_signal("activated", texture_progress.ratio)
	yield(get_tree().create_timer(1.5), "timeout")
	toggle(false)


func _on_ProgressBar_value_changed(_value: float) -> void:
	if texture_progress.value <= texture_progress.min_value:
		hit_min = true
	elif texture_progress.value >= texture_progress.max_value:
		hit_min = false
