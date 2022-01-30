extends TextureRect


export(bool) var wiggling = true
export(float) var frequency = 1
export(float) var amplitude = 1
export(float) var phase = 0

var accumulator: float = 0

func _process(delta: float) -> void:
	if wiggling:
		accumulator += delta
		rect_position.y = amplitude * sin(2 * PI * frequency * accumulator + phase)
