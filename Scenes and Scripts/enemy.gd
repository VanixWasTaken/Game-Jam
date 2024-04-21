extends Node2D

var player_inside_down_area = false
var player_inside_left_area = false
var player_inside_up_area = false
var player_inside_right_area = false
var rng = RandomNumberGenerator.new()

@export var min_time: float
@export var max_time: float





var round = 0

func _ready():
	$AmbienceTimer.wait_time = randf_range(min_time, max_time)
	random_direction_spawn()

func _process(delta):
	if $RayCast2D.is_colliding():
		MusicController.stop()
		Global.lights_out = false
		get_tree().change_scene_to_file("res://Scenes and Scripts/game_over.tscn")




func _on_timer_timeout():

	$AnimatedSprite2D.frame += 1
	
	if round == 0:
		$RayCast2D.rotate(0.78539816339745 * 2)
		round += 1
	elif round == 1:
		$RayCast2D.rotate(0.78539816339745 * 2)
		round += 1
	elif round == 2:
		$RayCast2D.rotate(0.78539816339745 * 2)
		round += 1
	elif round == 3:
		$RayCast2D.rotate(0.78539816339745 * 2)
		round = 0
		$AnimatedSprite2D.frame = 0
	

	









func _on_ambience_timer_timeout():
	$AmbienceTimer.wait_time = randf_range(min_time, max_time)
	_play_ambience("frog")
	$AmbienceTimer.start()

func _play_ambience(enemy_type):
	if enemy_type == "frog":
		var random = randi() % 4
		match random:
			0:
				$Ambience.stream = load("res://Assets/Sound/SFX/Frog/frog_ambience1.wav")
			1:
				$Ambience.stream = load("res://Assets/Sound/SFX/Frog/frog_ambience2.wav")
			2:
				$Ambience.stream = load("res://Assets/Sound/SFX/Frog/frog_ambience3.wav")
			3:
				$Ambience.stream = load("res://Assets/Sound/SFX/Frog/frog_ambience4.wav")
		$Ambience.play()



func random_direction_spawn():
	var my_random_number = rng.randi_range(0, 100)
	var my_random_number2 = rng.randi_range(1, 4)
	if my_random_number2 == 1:
		$AnimatedSprite2D.frame = 1
	if my_random_number2 == 2:
		$AnimatedSprite2D.frame = 2
	if my_random_number2 == 3:
		$AnimatedSprite2D.frame = 3
