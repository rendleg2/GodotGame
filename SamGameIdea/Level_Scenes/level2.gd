extends Node2D\
func _on_area_2d_body_entered(body):
	if body.name == "Player":
		get.tree().reload_current_scene
