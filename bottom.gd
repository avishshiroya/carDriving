extends Sprite2D

signal scroll_started
signal scroll_stopped

func _on_button_button_down() -> void:
	emit_signal("scroll_started")

func _on_button_button_up() -> void:
	emit_signal("scroll_stopped")
