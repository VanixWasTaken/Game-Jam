extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	how_die()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func how_die():
	if Global.lights_out:
		$LightsOut.stream = load("res://Assets/Sound/SFX/Death Sound/death_sound_lights_out_1.wav")
	elif !Global.lights_out:
		var rand = randi_range(0, 1)
		if rand == 0:
			$LightsOut.stream = load("res://Assets/Sound/SFX/Death Sound/death_sound_frog1.mp3")
		elif rand == 1:
			$LightsOut.stream = load("res://Assets/Sound/SFX/Death Sound/death_sound_spider.mp3")
	$LightsOut.play()



func _on_lights_out_finished():
	$TextureRect.visible = false
