extends Node2D


signal satisfied(happiness_level)


const HAIR_STYLES := [
	preload("res://assets/baby/baby-hair-1.png"),
	preload("res://assets/baby/baby-hair-2.png"),
	preload("res://assets/baby/baby-hair-3.png"),
	preload("res://assets/baby/baby-hair-4.png"),
	preload("res://assets/baby/baby-hair-5.png"),
]

const FACES := [
	preload("res://assets/baby/baby-face-cry.png"),
	preload("res://assets/baby/baby-face-sad.png"),
	preload("res://assets/baby/baby-face-eh.png"),
	preload("res://assets/baby/baby-face-happy.png"),
]

const ARMS := [
	preload("res://assets/baby/baby-arms-close.png"),
	preload("res://assets/baby/baby-arms-open.png")
]

export var color: Color = Color(1, 1, 1, 1) setget set_color
export(int, 0,4) var hair_style: int = 0 setget set_hair_style
export(int, 0,1) var arm_position: int = 0 setget set_arm_position
export var happiness_degrade_time := 10.0


var happiness_level: int = 3 setget set_happiness

onready var body: Sprite = $Body
onready var legs: Sprite = $Legs
onready var arms: Sprite = $Arms
onready var head: Sprite = $Head
onready var face: Sprite = $Head/Face
onready var hair: Sprite = $Head/Hair
onready var happy_timer: Timer = $HappyTimer
onready var sit_position: Position2D = $SitPosition


func _ready() -> void:
	set_color(Color(randf(), randf(), randf(), 1.0))
	set_hair_style(randi() % HAIR_STYLES.size())
	set_arm_position(randi() % ARMS.size())
	happy_timer.start(happiness_degrade_time)


func set_color(value: Color) -> void:
	color = value
	if is_inside_tree():
		if body:
			body.modulate = color
		if legs:
			legs.modulate = color
		if arms:
			arms.modulate = color
		if head:
			head.self_modulate = color


func set_hair_style(value: int) -> void:
	hair_style = value
	if hair:
		hair.texture = HAIR_STYLES[hair_style]


func set_arm_position(value: int) -> void:
	arm_position = value
	if arms:
		arms.texture = ARMS[arm_position]
		

func set_happiness(value: int) -> void:
	happiness_level = value
	if face:
		face.texture = FACES[happiness_level]


func _on_HappyTimer_timeout() -> void:
	if happiness_level > 0:
		self.happiness_level -= 1
		happy_timer.start(happiness_degrade_time)
	else:
		emit_signal("satisfied", happiness_level)
		queue_free()


func _on_Baby_area_entered(area: Area2D) -> void:
	pass
