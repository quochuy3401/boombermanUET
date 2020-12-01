extends KinematicBody2D


var timerOut = 1
var timer = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$Brick.play("Normal")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.collision_layer == 8:
		$Brick.play("Destroy")
		
	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	get_node(".").queue_free();
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	$Brick.play("Destroy")
	pass # Replace with function body.
