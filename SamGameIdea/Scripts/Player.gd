extends CharacterBody2D

var health = Global.playerhealth
var speed = 200
var jump = 100
var grav = 100

func _process(delta):
	Movement()
	if health <= 0:
		get_tree().reload_current_scene()


func _on_area_2d_body_entered(body):
	#Gabriel stupid
	health =- 100
	
func Movement():
	velocity.x = 0
	if Input.is_action_pressed("left"):
		velocity.x =- speed
	if Input.is_action_pressed("right"):
		velocity.x =+ speed
	if Input.is_action_pressed("up"):
		if is_on_floor() == true:
			velocity.y =- jump
	velocity.y =+ grav
	move_and_slide()


func _on_portal_body_entered(body):
	get_tree().change_scene_to_file("res://Level_Scenes/level2.tscn")
