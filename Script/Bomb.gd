extends KinematicBody2D


var timeOut = 1.5
var timer =0
var bombExplosion = preload("res://Scene/BombExplosion.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Bomb.play("Bomb")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += delta;
	if timer >= timeOut:
		var explosion = bombExplosion.instance();
		$".".queue_free()
		
		explosion.set_explosion_position(position.x, position.y)
		get_tree().get_root().get_child(0).get_child(6).add_child(explosion)
	pass

func set_bomb_position(x,y):
	position.x = x
	position.y = y
	pass # Replace with function body.
