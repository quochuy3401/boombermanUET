extends KinematicBody2D


var chuyendong = Vector2();
var tocdo = 30;
var huong;
var diem = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	huong = randi()%4 +1;
	
	pass # Replace with function body.


func _physics_process(delta):
	if is_on_wall():
		huong = randi()%4 +1;
	
	if huong == 1:
		chuyendong.y = -tocdo;
		$AnimatedSprite.play("Left");
	elif huong == 2:
		chuyendong.x = tocdo;
		$AnimatedSprite.play("Right");
	elif huong == 3:
		chuyendong.y = tocdo;
		$AnimatedSprite.play("Right");
	elif huong == 4: 
		chuyendong.x =  -tocdo
		$AnimatedSprite.play("Left");	
	else:
		chuyendong.x = 0
		chuyendong.y = 0
		$AnimatedSprite.play("Dead")
	chuyendong = move_and_slide(chuyendong)
	



func _on_Area2D_area_entered(area):
	get_tree().get_root().get_child(0).get_child(1).diem += diem
	huong = 0 # da chet
	print(get_tree().get_root().get_child(0).get_child(1).diem)
	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	$".".queue_free()
	pass # Replace with function body.



	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	#if body.collision_layer == 8:
		#$".".queue_free()
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	#if body.collision_layer == 8:
		#huong = 0 # da chet
		#$".".queue_free()
	#if body.collission_layer == 1 :
		#huong = randi()%4 +1;
	pass # Replace with function body.
