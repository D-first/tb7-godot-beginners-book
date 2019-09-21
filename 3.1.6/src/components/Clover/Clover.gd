extends Node2D

func _ready():
	growth()

func growth():
	get_node("SpriteAnimations").play("hana")
	get_node("GrowthSound").play()