extends Line2D

var red_one_pos = 0
var red_two_pos = 0
var line_node

func _ready():
	line_node = get_node('.')
	
func _physics_process(delta):
	red_one_pos = get_node('../RedOne').get_position()
	red_two_pos = get_node('../RedTwo').get_position()
	line_node.set_points(PoolVector2Array([red_one_pos, red_two_pos]))
	line_node.set_width(5)

