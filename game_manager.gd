extends Node
@onready var score_count: Label = $"../CanvasLayer/Score count"


var score = 0

func add_point():
	score += 1
	score_count.text = "You Collected " + str(score) + " COINS"
