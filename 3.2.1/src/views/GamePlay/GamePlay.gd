extends Node2D

var CloverScene = preload("res://src/components/clover/Clover.tscn")
var total_growth_count = 0

func _ready():
	spawn_clover(100, 100)

func spawn_clover(x, y):
	var clover_instance = CloverScene.instance()
	clover_instance.position = Vector2(x, y)
	clover_instance.connect("touched", self, "_on_Clover_touched")
	add_child(clover_instance)

func _on_Clover_touched(clover):
	total_growth_count += 1
	
	if total_growth_count % 10 == 0:
		clover.special_growth()
	else:
		clover.growth()