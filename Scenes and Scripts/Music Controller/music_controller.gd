extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	_play_music("nocturnal_ember", -12)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _play_music(title: String, volume: float = 0):
	MusicController.stream = load("res://Assets/Sound/Music/" + title + ".mp3")
	
	MusicController.play()
