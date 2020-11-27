extends KinematicBody2D

var vantoc = Vector2();
var tocdo = 50;
var vitri = -1;
var huong = 1;

func random():
	
	huong = randi()%4 + 1

func _physics_process(delta):

	if is_on_wall():
		random()
		
	if (huong == 1):
		vantoc.x = tocdo;
		$Balloom.play("right");
	elif (huong == 2):
		vantoc.x = -tocdo;
		$Balloom.play("left");
	elif (huong == 3):
		vantoc.y = tocdo;
		$Balloom.play("down");
	elif (huong == 4):
		vantoc.y = -tocdo;
		$Balloom.play("up");
	vantoc = move_and_slide(vantoc)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



