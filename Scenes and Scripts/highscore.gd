extends CanvasLayer

var highscore = 0




func _on_timer_timeout():
	highscore += 100
	$"RichTextLabel".text = str(highscore)
