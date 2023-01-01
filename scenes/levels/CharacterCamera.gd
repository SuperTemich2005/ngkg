extends Camera2D
var shaking = false
func _process(delta):
	if shaking:
		set_offset(Vector2(rand_range(-1.0, 1.0) * 3, rand_range(-1.0, 1.0) * 3))


func shake():
	shaking = true
	$Timer.start()
	yield($Timer,"timeout")
	shaking = false
