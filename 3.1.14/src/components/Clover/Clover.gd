extends Node2D

func _ready():
	randomize()

func growth():
	get_node("SpriteAnimations").play(choose_random_animation())
	get_node("GrowthSound").play()

func choose_random_animation():
	var random_number
	random_number = randi() % 3
	
	if random_number == 0:
		return "mitsuba"

	if random_number == 1:
		return "yotsuba"

	if random_number == 2:
		return "hana"

func vanish():
	queue_free()

func _on_TouchArea_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			growth()


func _on_VanishTimer_timeout():
	if get_node("SpriteAnimations").animation == "tane":
		vanish()
