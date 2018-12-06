extends KinematicBody2D

const gravity = 9.8
const jump_vel = 30.0
const right_vel = 400

var accel = Vector2()
var velocity = Vector2()

func _ready():
	set_process_input(true)
	set_physics_process(true)
	accel.y = gravity
	velocity.x = right_vel

func _physics_process(delta):
	velocity += accel
	if is_on_floor():
		velocity.y = 0
	move_and_slide(velocity, Vector2(0, -1))

func _input(event):
	pass