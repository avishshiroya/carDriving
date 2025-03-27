extends ParallaxBackground

@export var scroll_speed := 500  # Adjust scrolling speed
@export var screen_height := 720  # Set this to your screen or texture height

var forward := false
var reverse := false

func _process(delta: float) -> void:
	if forward:
		for layer in get_children():
			layer.motion_offset.y += scroll_speed * delta
			check_and_reset(layer)
	elif reverse:
		for layer in get_children():
			layer.motion_offset.y -= scroll_speed * delta
			check_and_reset(layer)

func check_and_reset(layer: ParallaxLayer) -> void:
	# Ensure seamless wrapping by checking when the layer is fully out of view
	if layer.motion_offset.y >= screen_height:
		layer.motion_offset.y -= screen_height * 3  # Move to the back
	elif layer.motion_offset.y <= -screen_height:
		layer.motion_offset.y += screen_height * 3  # Move to the front

func start_scrolling() -> void:
	forward = true

func start_reverse_scrolling() -> void:
	reverse = true

func stop_reverse_scrolling() -> void:
	reverse = false

func stop_scrolling() -> void:
	forward = false
