extends Node

var playerhealth = 100  
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if playerhealth <= 0:
		get_tree().change_scene_to_file("res://Level_Scenes/level2.tscn")
