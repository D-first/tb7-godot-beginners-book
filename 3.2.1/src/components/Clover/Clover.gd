extends Node2D

signal touched(clover)

func _ready():
	randomize()

func growth():
	$SpriteAnimations.play(choose_random_animation())
	$GrowthSound.play()

func special_growth():
	$SpriteAnimations.play("special")
	$GrowthSound.play()

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
			if $SpriteAnimations.animation == "tane":
				emit_signal("touched", self)


func _on_VanishTimer_timeout():
	if $SpriteAnimations.animation == "tane":
		vanish()
