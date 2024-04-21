extends Node2D


func _on_wegmach_timer_timeout():
	%Highscore.make_visible()
	$LoadingScreen.queue_free()
	$"Glühwürmchen1".queue_free()
	$"Glühwürmchen2".queue_free()
	$"Glühwürmchen3".queue_free()
	$"Glühwürmchen4".queue_free()
	$"Glühwürmchen5".queue_free()
	$"Glühwürmchen6".queue_free()
	$"Glühwürmchen7".queue_free()
	$"Glühwürmchen8".queue_free()
	$"Glühwürmchen9".queue_free()
	$"Glühwürmchen10".queue_free()



func _on_timer_timeout():
	$"Glühwürmchen1/Glühwürmchen1Leuchtend".visible = true
	$"Glühwürmchen1/PointLight2D".visible = true
	$"Glühwürmchen1/AnimationPlayer".play("new_animation")





func _on_timer_2_timeout():
	$"Glühwürmchen2/Glühwürmchen2Leuchtend".visible = true
	$"Glühwürmchen2/PointLight2D".visible = true
	$"Glühwürmchen2/AnimationPlayer".play("new_animation")


func _on_timer_3_timeout():
	$"Glühwürmchen3/Glühwürmchen3Leuchtend".visible = true
	$"Glühwürmchen3/PointLight2D".visible = true
	$"Glühwürmchen3/AnimationPlayer".play("new_animation")

func _on_timer_4_timeout():
	$"Glühwürmchen4/Glühwürmchen4Leuchtend".visible = true
	$"Glühwürmchen4/PointLight2D".visible = true
	$"Glühwürmchen4/AnimationPlayer".play("new_animation")


func _on_timer_5_timeout():
	$"Glühwürmchen5/Glühwürmchen5Leuchtend".visible = true
	$"Glühwürmchen5/PointLight2D".visible = true
	$"Glühwürmchen5/AnimationPlayer".play("new_animation")


func _on_timer_6_timeout():
	$"Glühwürmchen6/Glühwürmchen6Leuchtend".visible = true
	$"Glühwürmchen6/PointLight2D".visible = true
	$"Glühwürmchen6/AnimationPlayer".play("new_animation")


func _on_timer_7_timeout():
	$"Glühwürmchen7/Glühwürmchen7Leuchtend".visible = true
	$"Glühwürmchen7/PointLight2D".visible = true
	$"Glühwürmchen7/AnimationPlayer".play("new_animation")


func _on_timer_8_timeout():
	$"Glühwürmchen8/Glühwürmchen8Leuchtend".visible = true
	$"Glühwürmchen8/PointLight2D".visible = true
	$"Glühwürmchen8/AnimationPlayer".play("new_animation")


func _on_timer_9_timeout():
	$"Glühwürmchen9/Glühwürmchen9Leuchtend".visible = true
	$"Glühwürmchen9/PointLight2D".visible = true
	$"Glühwürmchen9/AnimationPlayer".play("new_animation")


func _on_timer_10_timeout():
	$"Glühwürmchen10/Glühwürmchen10Leuchtend".visible = true
	$"Glühwürmchen10/PointLight2D".visible = true
	$"Glühwürmchen10/AnimationPlayer".play("new_animation")
