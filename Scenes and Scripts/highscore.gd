extends CanvasLayer

func _ready():
	self.visible = false

func _process(delta):
	$"RichTextLabel".text = " " + "
	" + str(Global.highscore)


func _on_timer_timeout():
	Global.highscore += 100


func _on_timer_2_timeout():
	$Timer.start()

func make_visible():
	self.visible = true
