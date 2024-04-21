extends CanvasLayer



func _process(delta):
	$"RichTextLabel".text = " " + "
	" + str(Global.highscore)


func _on_timer_timeout():
	Global.highscore += 100
	
	
	


