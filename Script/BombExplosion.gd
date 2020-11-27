extends KinematicBody2D

var timeOut = 2
var timer =0
#var player= get_node("/root/Bomberman1/level1").get_child(0)
# Called when the node enters the scene tree for the first time.
func _ready():
	
	$trungtam.play("trungtam");
	$phai.play("phai")
	$trai.play("trai")
	$duoi.play("duoi")
	$tren.play("tren")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func set_explosion_position(x,y):
	position.x = x
	position.y = y
	pass # Replace with function body.

func _process(delta):
	timer += delta
	if timer >= timeOut:
		#player.bombCounting+=1
		$".".queue_free()
		
	pass

func _on_tren_body_entered(body):
	if body.collision_layer == 1:
		$tren.queue_free()
	else:
		$tren.show()
	pass # Replace with function body.


func _on_duoi_body_entered(body):
	if body.collision_layer == 1:
		$duoi.queue_free()
	else :
		$duoi.show()
	pass # Replace with function body.


func _on_trai_body_entered(body):
	if body.collision_layer == 1:
		$trai.queue_free()
	else:
		$trai.show()
	pass # Replace with function body.


func _on_phai_body_entered(body):
	if body.collision_layer == 1:
		$phai.queue_free()
	else:
		$phai.show()
	pass # Replace with function body.

func isAble(boolean):
	
	pass
