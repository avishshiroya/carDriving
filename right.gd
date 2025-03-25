extends Sprite2D
@onready var parent = $"../Car101"
var pressing = false

func _process(_delta: float) -> void:
	if pressing:
		if(parent.position.x < 770):
			parent.position.x +=5

func _on_button_button_down() -> void:
	pressing = true # Replace with function body.


func _on_button_button_up() -> void:
	pressing = false # Replace with function body.
