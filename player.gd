extends KinematicBody2D #Basically just rigidbody

const MOTION_SPEED = 120 #Pixels/second. Constants don't change

#################################################
#This function handles player movement          #
#################################################
func _physics_process(delta):
	var motion = Vector2() #Vector 2 is 2D.

	if Input.is_action_pressed("move_up"):
		motion += Vector(0,-1)
	if Input.is_action_pressed("move_bottom"):
		motion += Vector(0,1)
	if Input.is_action_pressed("move_left"):
		motion += Vector(-1,0)
	if Input.is_action_pressed("move_right"):
		motion += Vector(1,0)

	motion = motion.normalized() * MOTION_SPEED

	move_and_slide(motion)
