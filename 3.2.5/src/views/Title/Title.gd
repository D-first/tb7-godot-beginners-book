extends Node2D

func _ready():
	pass


func _on_PlayButton_pressed():
	get_tree().change_scene("res://src/views/GamePlay/GamePlay.tscn")
