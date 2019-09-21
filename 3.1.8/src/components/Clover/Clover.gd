extends Node2D

func _ready():
	growth()

func growth():
	get_node("SpriteAnimations").play(a())
	get_node("GrowthSound").play()

func a():
	return "hana"