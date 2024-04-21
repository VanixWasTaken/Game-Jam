extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	_play_music("nocturnal_ember")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _play_music(title: String):
	MusicController.stream = load("res://Assets/Sound/Music/" + title + ".mp3")
	MusicController.play()

func _stop_playing():
	$AnimationPlayer.play("fade_out")
	await $AnimationPlayer.animation_finished
	MusicController.stream = null
