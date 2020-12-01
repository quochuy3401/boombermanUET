extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_play_pressed():
	get_tree().change_scene("res://Scene/Bomberman1.tscn");
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit();
	pass # Replace with function body.


func _on_how_to_play_pressed():
	get_node("how_to_play").show();
	get_node("menu").hide()
	pass # Replace with function body.


func _on_back_pressed():
	get_node("how_to_play").hide();
	get_node("menu").show()
	pass # Replace with function body.
