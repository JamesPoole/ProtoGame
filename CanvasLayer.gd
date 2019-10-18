extends CanvasLayer

var blue_pos = 0

func _ready():
	set_process(true)
	
func _process():
	update()

func _draw(delta):
	blue_pos = get_node('BlueOne').get_position()
	print(typeof(blue_pos))

	draw_line(blue_pos, Vector2(50, 50), Color(255, 0, 0), 1)