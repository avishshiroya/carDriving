extends ParallaxBackground

@export var scroll_speed := 100

var pressing := false

func _process(delta: float) -> void:
	if pressing:
		for layer in get_children():
			layer.motion_offset.y += scroll_speed * delta

func start_scrolling() -> void:
	pressing = true

func stop_scrolling() -> void:
	pressing = false
