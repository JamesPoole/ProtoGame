extends "res://Characters/player.gd"

func _ready():
	print('red!')
	
func _physics_process(delta):
	if Input.is_action_pressed("red_1_right"):
		motion.x += ACCEL
		motion.x = min(motion.x, MAX_SPEED)
	elif Input.is_action_pressed("red_1_left"):
		motion.x -= ACCEL
		motion.x = max(motion.x, -MAX_SPEED)
	else:
		motion.x = lerp(motion.x, 0, 0.2)
	if is_on_floor():
		if Input.is_action_just_pressed("red_1_up"):
			motion.y = JUMP_HEIGHT

