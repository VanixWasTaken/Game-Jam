extends Node2D

var player_inside_down_area = false
var player_inside_left_area = false
var player_inside_up_area = false
var player_inside_right_area = false

var enemy_direction = "none"



var round = 0

func _process(delta):
	if player_inside_down_area and enemy_direction == "down":
		get_tree().change_scene_to_file("res://Scenes and Scripts/game_over.tscn")
	if player_inside_left_area and enemy_direction == "left":
		get_tree().change_scene_to_file("res://Scenes and Scripts/game_over.tscn")
	if player_inside_up_area and enemy_direction == "up":
		get_tree().change_scene_to_file("res://Scenes and Scripts/game_over.tscn")
	if player_inside_right_area and enemy_direction == "right":
		get_tree().change_scene_to_file("res://Scenes and Scripts/game_over.tscn")






func _on_timer_timeout():

	$AnimatedSprite2D.frame += 1
	
	if round == 0:
		enemy_direction = "up"
		round += 1
	elif round == 1:
		enemy_direction = "right"
		round += 1
	elif round == 2:
		enemy_direction = "down"
		round += 1
	elif round == 3:
		enemy_direction = "left"
		round = 0
		$AnimatedSprite2D.frame = 0
	

	






func _on_down_scan_body_entered(body):
	if body.get_name() == "Player":
		player_inside_down_area = true
func _on_down_scan_body_exited(body):
	if body.get_name() == "Player":
		player_inside_down_area = false


func _on_left_scan_body_entered(body):
	if body.get_name() == "Player":
		player_inside_left_area = true
func _on_left_scan_body_exited(body):
	if body.get_name() == "Player":
		player_inside_left_area = false


func _on_up_scan_body_entered(body):
	if body.get_name() == "Player":
		player_inside_up_area = true
func _on_up_scan_body_exited(body):
	if body.get_name() == "Player":
		player_inside_up_area = false


func _on_right_scan_body_entered(body):
	if body.get_name() == "Player":
		player_inside_right_area = true
func _on_right_scan_body_exited(body):
	if body.get_name() == "Player":
		player_inside_right_area = false
