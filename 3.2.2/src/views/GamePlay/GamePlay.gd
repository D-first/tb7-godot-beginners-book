extends Node2D

var CloverScene = preload("res://src/components/clover/Clover.tscn")
var total_growth_count = 0
var spawn_positions = []

func _ready():
	spawn_positions.push_back(Vector2(50, 50))
	spawn_positions.push_back(Vector2(150, 50))
	spawn_positions.push_back(Vector2(250, 50))

func spawn_clover(pos):
	var clover_instance = CloverScene.instance()
	clover_instance.position = pos
	clover_instance.connect("touched", self, "_on_Clover_touched")
	add_child(clover_instance)

func _on_Clover_touched(clover):
	total_growth_count += 1
	
	if total_growth_count % 10 == 0:
		clover.special_growth()
	else:
		clover.growth()

func _on_SpawnTImer_timeout():
	if !spawn_positions.empty():
		spawn_clover(spawn_positions.pop_back())
