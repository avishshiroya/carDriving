extends Sprite2D
@onready var parent =$"../Car101"

signal scroll_started
signal scroll_stopped

var pressing = false

func _process(delta: float) -> void:
	pass
	#if(pressing):
		#parent.position.y-=5


func _on_button_button_down() -> void:
	emit_signal("scroll_started")
	pressing=true # Replace with function body.


func _on_button_button_up() -> void:
	emit_signal("scroll_stopped")  # Emit the signal when released
	pressing =false # Replace with function body.
