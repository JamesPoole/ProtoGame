extends Node

var blue_score = 0
var red_score = 0


func _ready():
	print(get_tree())
	#.connect('bonk', self, 'update_score')

func _physics_process(delta):
	pass

func update_score(team):
	if team == 'blue':
		blue_score += 1
	elif team == 'red':
		red_score += 1

