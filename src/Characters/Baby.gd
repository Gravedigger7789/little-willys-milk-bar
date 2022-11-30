extends Node2D

signal satisfied(score)

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
	preload("res://assets/baby/baby-arms-open.png"),
]

const WANTED_BUBBLES := [
	preload("res://assets/bubble/thought-bubble-1.png"),
	preload("res://assets/bubble/thought-bubble-2.png"),
	preload("res://assets/bubble/thought-bubble-3.png"),
	preload("res://assets/bubble/thought-bubble-4.png"),
]

const FLAVORS := {
	"Berry": preload("res://assets/tap/milk-tap-handle-berry.png"),
	"Chocolate": preload("res://assets/tap/milk-tap-handle-choco.png"),
	"Regular": preload("res://assets/tap/milk-tap-handle-reg.png"),
}

const CAPS := {
	"Red": preload("res://assets/bottle/bottle-lid-red.png"),
	"Blue": preload("res://assets/bottle/bottle-lid-blue.png"),
	"Green": preload("res://assets/bottle/bottle-lid-green.png"),
}

const SKIN_TONES := [
	Color("#ffd6c5"),
	Color("#ffe2c9"),
	Color("#ffcba3"),
	Color("#d8905f"),
	Color("#88513a"),
	Color("#e7c1b2"),
	Color("#e7cbb5"),
	Color("#e8b894"),
	Color("#c28155"),
	Color("#7b4934"),
	Color("#e4bdad"),
	Color("#e6c8b0"),
	Color("#e7b38d"),
	Color("#be794a"),
	Color("#733e26"),
]

const POINT_SOUNDS := [
	preload("res://assets/music/point-earning-burp.wav"),
	preload("res://assets/music/point-earning-hiccup.wav"),
]

const COOING_SOUNDS := [
	preload("res://assets/music/baby-cooing-1.wav"),
	preload("res://assets/music/baby-cooing-2.wav"),
	preload("res://assets/music/baby-cooing-3.wav"),
]

const ANNOYED_SOUNDS := [
	preload("res://assets/music/baby-annoyed-1.wav"),
	preload("res://assets/music/baby-annoyed-2.wav"),
	preload("res://assets/music/baby-annoyed-3.wav"),
]

export var color: Color = Color(1, 1, 1, 1) setget set_color
export(int, 0, 4) var hair_style: int = 0 setget set_hair_style
export(int, 0, 1) var arm_position: int = 0 setget set_arm_position
export var happiness_degrade_time := 10.0

var max_happiness := 3.0
var happiness_level: int = max_happiness setget set_happiness
var wanted_flavor: String
var wanted_cap: String
var bottle: Area2D

onready var body: Sprite = $Body
onready var legs: Sprite = $Legs
onready var arms: Sprite = $Arms
onready var head: Sprite = $Head
onready var face: Sprite = $Head/Face
onready var hair: Sprite = $Head/Hair
onready var happy_timer: Timer = $HappyTimer
onready var sit_position: Position2D = $SitPosition
onready var wanted_bubble_sprite: Sprite = $WantedBubble
onready var wanted_cap_sprite: Sprite = $WantedBubble/WantedCap
onready var wanted_flavor_sprite: Sprite = $WantedBubble/WantedFlavor
onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer


func _ready() -> void:
	set_color(SKIN_TONES[randi() % SKIN_TONES.size()])
	set_hair_style(randi() % HAIR_STYLES.size())
	set_arm_position(randi() % ARMS.size())
	set_wanted_bubble()
	audio_stream_player.volume_db = 5
	audio_stream_player.stream = COOING_SOUNDS[randi() % COOING_SOUNDS.size()]
	audio_stream_player.play(1.0)
	happy_timer.start(happiness_degrade_time)


func set_wanted_bubble() -> void:
	wanted_bubble_sprite.texture = WANTED_BUBBLES[randi() % WANTED_BUBBLES.size()]
	wanted_flavor = FLAVORS.keys()[randi() % FLAVORS.size()]
	wanted_flavor_sprite.texture = FLAVORS[wanted_flavor]
	wanted_cap = CAPS.keys()[randi() % CAPS.size()]
	wanted_cap_sprite.texture = CAPS[wanted_cap]


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
	# Fix arm position when open
	if arm_position == 1:
		arms.show_behind_parent = true


func set_happiness(value: int) -> void:
	happiness_level = value
	if face:
		face.texture = FACES[happiness_level]
	if happiness_level <= max_happiness / 2.0:
		audio_stream_player.volume_db = 5
		audio_stream_player.stream = ANNOYED_SOUNDS[randi() % ANNOYED_SOUNDS.size()]
		audio_stream_player.play(0.5)


func _on_HappyTimer_timeout() -> void:
	if happiness_level > 0:
		self.happiness_level -= 1
		happy_timer.start(happiness_degrade_time)
	else:
		emit_signal("satisfied", happiness_level)
		queue_free()


func _on_Baby_area_entered(area: Area2D) -> void:
	bottle = area
	if bottle and !bottle.is_connected("drink_up", self, "_on_Bottle_drink_up"):
		var _connected = bottle.connect("drink_up", self, "_on_Bottle_drink_up")


func _on_Baby_area_exited(area: Area2D) -> void:
	if bottle and bottle == area and bottle.is_connected("drink_up", self, "_on_Bottle_drink_up"):
		bottle.disconnect("drink_up", self, "_on_Bottle_drink_up")
	bottle = null


func _on_Bottle_drink_up(fill: float, flavor: String, cap: String) -> void:
	var actual_happiness = happiness_level
	if wanted_flavor == flavor and wanted_cap == cap:
		self.happiness_level = int(max_happiness)
		audio_stream_player.stream = POINT_SOUNDS[0]
		audio_stream_player.volume_db = 15
	else:
		self.happiness_level = 0
		audio_stream_player.stream = POINT_SOUNDS[1]
		audio_stream_player.volume_db = 12
	audio_stream_player.play()
	yield(get_tree().create_timer(1.0), "timeout")
	emit_signal("satisfied", (happiness_level + actual_happiness) * fill)
	queue_free()
