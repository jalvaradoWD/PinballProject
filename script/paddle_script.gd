extends AnimatableBody2D

@onready var PadAnimPlayer = $"flipper_animation_player"
@export var is_flipped = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _input(_event):
	if is_flipped:
		if Input.is_action_just_pressed("flipper_right"):
			PadAnimPlayer.play("flipper_animation_right")
		elif Input.is_action_just_released("flipper_right"):
			PadAnimPlayer.play_backwards()
	else:
		if Input.is_action_just_pressed("flipper_left"):
			PadAnimPlayer.play("flipper_animation_left")
		elif Input.is_action_just_released("flipper_left"):
			PadAnimPlayer.play_backwards()
