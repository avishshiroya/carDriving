extends Sprite2D
@onready var parent =$"../Car101"
var pressing = false

func _process(delta: float) -> void:
	if(pressing):
		if(parent.position.y < 570):
			parent.position.y +=5


func _on_button_button_down() -> void:
	pressing =true # Replace with function body.


func _on_button_button_up() -> void:
	pressing=false # Replace with function body.
