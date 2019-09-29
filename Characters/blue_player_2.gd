extends "res://Characters/player.gd"

func _ready():
	print('blue!')
	
func _physics_process(delta):
	if Input.is_action_pressed("blue_2_right"):
		move_right()
	elif Input.is_action_pressed("blue_2_left"):
		move_left()
	else:
		return_to_stationary()

	if Input.is_action_just_pressed("blue_2_up"):
		jump()
