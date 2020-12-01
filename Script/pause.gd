extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_tieptuc_pressed():
	get_tree().paused = false
	print(4)
	pass # Replace with function body.


func _on_pause_pressed():
	get_tree().paused = true
	pass # Replace with function body.
