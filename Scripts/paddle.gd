extends CharacterBody2D

const SPEED = 300.0
@export var side = 'p1'

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction
	if side == 'p1':
		direction = get_axis(KEY_W, KEY_S)
	elif side == 'p2':
		direction = get_axis(KEY_UP, KEY_DOWN)
		
	velocity.y = direction * SPEED

	move_and_slide()

func get_axis(up, down):
	if Input.is_key_pressed(up): return -1
	elif Input.is_key_pressed(down): return 1
	else: return 0
