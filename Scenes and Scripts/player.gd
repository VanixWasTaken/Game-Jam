extends CharacterBody2D

@export var max_speed = 300
@export var acceleration = 1500
@export var friction = 1200

@export var min_time_buzz: float
@export var max_time_buzz: float

@onready var axis = Vector2.ZERO


func _ready():
	global_position = Vector2(10540, 5940)
	$AudioListener2D.make_current()
	$Buzzzzzzz/FoleyTime.wait_time = randf_range(min_time_buzz, max_time_buzz)
	$Buzzzzzzz/FoleyTime.start()

func _process(delta):
	if Input.is_action_just_pressed("ui_right"):
		walk_animation_right()
	if Input.is_action_just_pressed("ui_left"):
		walk_animation_left()
	if Input.is_action_just_pressed("ui_down"):
		walk_animation_down()
	if Input.is_action_just_pressed("ui_up"):
		walk_animation_up()

func _physics_process(delta):
	move(delta)


func get_input_axis():
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	axis.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	return axis.normalized()


func move(delta):
	axis = get_input_axis()
	
	if axis == Vector2.ZERO:
		apply_friction(friction * delta)
		$AnimatedSprite2D.stop()
	else:
		apply_movement(axis * acceleration * delta)
		randomize_footsteps()
		
	move_and_slide()
	
	
func apply_friction(amount):
	if velocity.length() > amount:
		velocity -= velocity.normalized() * amount
	
	else:
		velocity = Vector2.ZERO


func apply_movement(accel):
	velocity += accel
	velocity = velocity.limit_length(max_speed)

func walk_animation_right():
	$AnimatedSprite2D.stop()
	$AnimatedSprite2D.play("walk_right")

func walk_animation_left():
	$AnimatedSprite2D.stop()
	$AnimatedSprite2D.play("walk_left")

func walk_animation_down():
	$AnimatedSprite2D.stop()
	$AnimatedSprite2D.play("walk_down")

func walk_animation_up():
	$AnimatedSprite2D.stop()
	$AnimatedSprite2D.play("walk_up")

func randomize_footsteps():
	var random = randi() % 4
	if !$Steps.playing:
		match random:
			0:
				$Steps.stream = load("res://Assets/Sound/SFX/Walking/footstep_1.wav")
			1:
				$Steps.stream = load("res://Assets/Sound/SFX/Walking/footstep_2.wav")
			2:
				$Steps.stream = load("res://Assets/Sound/SFX/Walking/footstep_3.wav")
			3:
				$Steps.stream = load("res://Assets/Sound/SFX/Walking/footstep_4.wav")
		$Steps.play()



func _on_foley_time_timeout():
	var random = randi() % 5
	match random:
		0:
			$Buzzzzzzz.stream = load("res://Assets/Sound/SFX/Light Ambience/light_buzz_1.wav")
		1:
			$Buzzzzzzz.stream = load("res://Assets/Sound/SFX/Light Ambience/light_buzz_2.wav")
		2:
			$Buzzzzzzz.stream = load("res://Assets/Sound/SFX/Light Ambience/light_buzz_3.wav")
		3:
			$Buzzzzzzz.stream = load("res://Assets/Sound/SFX/Light Ambience/light_buzz_4.wav")
		4:
			$Buzzzzzzz.stream = load("res://Assets/Sound/SFX/Light Ambience/light_buzz_5.wav")
			
	$Buzzzzzzz.play()
	$Buzzzzzzz/FoleyTime.wait_time = randf_range(min_time_buzz, max_time_buzz)
	$Buzzzzzzz/FoleyTime.start()

func play_powerup():
	$PowerUp.play()


func _on_detection_up_area_entered(area):
	if area.get_name() == "Hitbox":
		$".".z_index = 2
func _on_detection_up_area_exited(area):
	if area.get_name() == "Hitbox":
		$".".z_index = 1

