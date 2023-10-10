extends AnimatableBody2D

@onready var PadAnimPlayer = $"flipper_animation_player"
@export var is_flipped = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _input(_event):
	if is_flipped:
		if Input.is_action_just_pressed("paddle_right"):
			print(scale)
			PadAnimPlayer.play("paddle_right_animation")
		elif Input.is_action_just_released("paddle_right"):
			PadAnimPlayer.play_backwards()
	else:
		if Input.is_action_just_pressed("paddle_left"):
			PadAnimPlayer.play("paddle_left_animation")
		elif Input.is_action_just_released("paddle_left"):
			PadAnimPlayer.play_backwards()
