extends Line2D

var blue_one_pos = 0
var blue_two_pos = 0
var line_node

func _ready():
	line_node = get_node('.')
	
func _physics_process(delta):
	blue_one_pos = get_node('../BlueOne').get_position()
	blue_two_pos = get_node('../BlueTwo').get_position()
	print(blue_one_pos)
	line_node.set_points(PoolVector2Array([blue_one_pos, blue_two_pos]))
	line_node.set_width(5)
