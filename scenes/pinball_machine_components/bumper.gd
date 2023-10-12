extends Node2D

# @onready var top_bump_coll: CollisionShape2D = $"top_bumper_push_collision"
# @onready var mid_bump_coll: CollisionShape2D = $"mid_bumper_push_collision"
@onready var bot_bump_coll: Area2D = $"bot_bumper_push_area"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_bot_bumper_push_area_body_entered(body):
	print("Ball has entered the area.")
	var force_amount = 100000
	var Ball : RigidBody2D = body
	print(Ball.linear_velocity)

	Ball.apply_central_force(Vector2(force_amount,-force_amount))

	pass # Replace with function body.
