extends CharacterBody2D

@export var max_speed = 300
@export var acceleration = 1500
@export var friction = 1200

@onready var axis = Vector2.ZERO


func _ready():
	global_position = Vector2(10540, 5940)

func _physics_process(delta):
	move(delta)
	


func get_input_axis():
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	axis.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	return axis.normalized()


func move(delta):
	
	axis = get_input_axis()
	
	if axis ==Vector2.ZERO:
		apply_friction(friction * delta)
	else:
		apply_movement(axis * acceleration * delta)
		
	move_and_slide()
	
func apply_friction(amount):
	if velocity.length() > amount:
		velocity -= velocity.normalized() * amount
	
	else:
		velocity = Vector2.ZERO


func apply_movement(accel):
	velocity += accel
	velocity = velocity.limit_length(max_speed)



