extends Node2D

func _ready():
	randomize()
	growth()
	print(randi())
	print(randi())

func growth():
	get_node("SpriteAnimations").play(a())
	get_node("GrowthSound").play()

func a():
	return "hana"