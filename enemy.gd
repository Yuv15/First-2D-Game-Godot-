extends Node2D

const SPEED = 60
var direction = 1
@onready var ray_cast_2d_right: RayCast2D = $RayCast2DRight
@onready var ray_cast_2_dleft: RayCast2D = $RayCast2Dleft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta: float) -> void:
	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_2_dleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += SPEED * delta * direction
