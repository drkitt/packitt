extends Spatial


export(bool) var wiggling = true
export(float) var frequency = 1
export(float) var amplitude = 1

var accumulator: float = 0

func _process(delta: float) -> void:
	if wiggling:
		accumulator += delta
		$Box.translation.y = amplitude * sin(2 * PI * frequency * accumulator)
