extends KinematicBody2D


var bomb = preload("res://Scene/Bomb.tscn")

var chuyendong = Vector2()
var tocdochuan = 60
var tocdo
var tocdobuff = 100
var bomx = 0;
var bomy= 0;
var bombMax =1
var bombCounting
var alive = true
var timeOut = 1
var timer = 0
var diem = 0;
var diemMax=400
var vitridau = Vector2(0,0)
var somang = 3;
var isSpeedBuff = false
var timerSpeed = 0

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") && alive == true:
		chuyendong.y = 0
		chuyendong.x = tocdo;
		$Player.play("right")
		
	elif Input.is_action_pressed("ui_left") && alive == true:
		chuyendong.y = 0
		chuyendong.x = -tocdo;
		$Player.play("left")
		
	elif Input.is_action_pressed("ui_up") && alive == true:
		chuyendong.x = 0
		chuyendong.y = -tocdo;
		$Player.play("up")
		
	elif Input.is_action_pressed("ui_down") && alive == true:
		chuyendong.x = 0
		chuyendong.y = tocdo;
		$Player.play("down")	
		
	elif alive == true:
		chuyendong.x = 0
		chuyendong.y = 0
		$Player.play("idle")
	chuyendong = move_and_slide(chuyendong);
	pass
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	bombCounting = bombMax
	tocdo = tocdochuan
	print(diem)
	pass # Replace with function body.

func _process(delta):
	if alive == false:
		timer+= delta
	if timer > timeOut && somang == 0:
		print("thua")
		
	if isSpeedBuff == true:
		timerSpeed += delta
		if timerSpeed >10:
			isSpeedBuff = false
			tocdo = tocdochuan
			timerSpeed = 0
	pass
	
func _input(event):
		if Input.is_action_pressed("ui_select"):
			bomx = int(position.x) ;
			bomy = int(position.y) ;
	
			bomx = int(bomx / 32) * 32 + 16 ;
			bomy = int(bomy / 32) * 32 + 16 ;
			
			print(bomx);
			print(" ");
			print(bomy);
			if bombCounting>0:
				bombCounting-=1
				var newBomb = bomb.instance()
				newBomb.set_bomb_position(bomx, bomy)
				get_tree().get_root().get_child(0).get_child(6).add_child(newBomb)
		pass 

func _on_Area2D_body_entered(body):
	if body.collision_layer == 8:
		somang -= 1
		position.x = 48;
		position.y = 48
		
	if body.collision_layer == 16:
		somang -= 1
		position.x = 48;
		position.y = 48
	if somang == 0:
		get_tree().change_scene("res://Scene/Lose.tscn")
		
	if body.collision_layer == 64:
		isSpeedBuff = true
		tocdo = tocdobuff;
		body.queue_free()
		$AudioStreamPlayer.playing = true
		
	if body.collision_layer == 128:
		somang += 1;
		print(somang);
		body.queue_free();
		$AudioStreamPlayer.playing = true
		
	if body.collision_layer == 256:
		bombCounting+=1
		body.queue_free()
		$AudioStreamPlayer.playing = true
		
	if (body.collision_layer == 512 && diem == diemMax):
		get_tree().change_scene("res://Scene/win.tscn")
	pass # Replace with function body.

func _on_Area2D_area_entered(area):
	#khi bi no bomb
	if (somang > 0) :
		somang = somang - 1;
	if (somang == 0) :
		#alive = false
		#$Player.play("dead")
		get_tree().change_scene("res://Scene/Lose.tscn")
	if (somang > 0) :
		position.x = 48;
		position.y = 48
	pass # Replace with function body.

func heartRemain(s):
	
	pass
	

