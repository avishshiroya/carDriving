extends Node2D


@onready var parallax = $ParallaxBackground
@onready var button = $"../Top/Button"

func _ready():
	if button:
		button.button_down.connect(parallax.start_scrolling)
		button.button_up.connect(parallax.stop_scrolling)
