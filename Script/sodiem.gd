extends Label

var sodiem;


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _process(delta):
	sodiem = get_tree().get_root().get_child(0).get_child(1).diem
	$".".text = str(sodiem)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
