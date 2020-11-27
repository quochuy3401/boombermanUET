extends KinematicBody2D

var test1="test huyto"

var test = "test qhuy"
var bomb = preload("res://Scene/Bomb.tscn")

var chuyendong = Vector2()
var tocdo = 100
var bomx = 0;
var bomy= 0;
var bombMax =2
var bombCounting
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		chuyendong.y = 0
		chuyendong.x = tocdo;
		$Player.play("right")
		
	elif Input.is_action_pressed("ui_left"):
		chuyendong.y = 0
		chuyendong.x = -tocdo;
		$Player.play("left")
		
	elif Input.is_action_pressed("ui_up"):
		chuyendong.x = 0
		chuyendong.y = -tocdo;
		$Player.play("up")
		
	elif Input.is_action_pressed("ui_down"):
		chuyendong.x = 0
		chuyendong.y = tocdo;
		$Player.play("down")	
		
	else:
		chuyendong.x = 0
		chuyendong.y = 0
	chuyendong = move_and_slide(chuyendong);
	pass
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	bombCounting = bombMax
	pass # Replace with function body.
	
	

func _input(event):
		if Input.is_action_pressed("ui_select"):
			bomx = int(position.x) ;
			bomy = int(position.y) ;
	
			bomx = int(bomx / 32) * 32 + 16 ;
			bomy = int(bomy / 32) * 32 + 16 ;
			
			print(bomx);
			print(" ");
			print(bomy);
			#if bombCounting>0:
				#bombCounting-=1
			var newBomb = bomb.instance()
			newBomb.set_bomb_position(bomx, bomy)
			get_tree().get_root().get_child(0).add_child(newBomb)
		pass 

