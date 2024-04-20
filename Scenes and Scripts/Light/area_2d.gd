extends Area2D



func _on_body_entered(body):
	if body.get_name() == "Player":
		Global.highscore += 1000
