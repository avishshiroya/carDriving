extends Node2D

@onready var parallax = $ParallaxBackground
@onready var topButton = $"../Top/Button"
@onready var bottomButton = $"../Bottom/Button"

func _ready():
	if topButton:
		topButton.button_down.connect(parallax.start_scrolling)
		topButton.button_up.connect(parallax.stop_scrolling)
	
	if bottomButton:
		bottomButton.button_down.connect(parallax.start_reverse_scrolling)
		bottomButton.button_up.connect(parallax.stop_reverse_scrolling)
