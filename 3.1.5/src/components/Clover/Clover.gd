extends Node2D

func _ready():
	get_node("SpriteAnimations").play("hana")
	get_node("GrowthSound").play()
