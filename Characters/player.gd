extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 35
const ACCEL = 40
const MAX_SPEED = 300
const JUMP_HEIGHT = -800
const MAX_JUMP_COUNT = 2

var motion = Vector2()
var jump_count = 0

onready var character = get_node(".").get_name()

signal bonk

func _ready():
	pass

func _physics_process(delta):
	motion.y += GRAVITY
	#var friction = true
	
	motion = move_and_slide(motion, UP)
	
	if is_on_floor():
		jump_count = 0


func check_collision(team):
	if get_slide_collision(0) != null:
		if get_slide_collision(0).get_collider().is_in_group("player"):
			jump()
			if team == "blue" && get_slide_collision(0).get_collider().is_in_group("red"):
				emit_signal("bonk")

func move_right():
	motion.x += ACCEL
	motion.x = min(motion.x, MAX_SPEED)

func move_left():
	motion.x -= ACCEL
	motion.x = max(motion.x, -MAX_SPEED)

func return_to_stationary():
	motion.x = lerp(motion.x, 0, 0.2)
	
func jump():
	if jump_count < MAX_JUMP_COUNT:
		motion.y = JUMP_HEIGHT
		jump_count += 1
	