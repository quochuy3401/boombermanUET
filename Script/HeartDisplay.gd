extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mang

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.

func _process(delta):
	mang = get_tree().get_root().get_child(0).get_child(1).somang
	$".".text= str(mang)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
