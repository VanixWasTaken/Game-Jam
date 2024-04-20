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


func _set_track_for_stress(track: String):
	$StressMod1.stream = load("res://Assets/Sound/Music/Stress/" + track + "_1.mp3")
	$StressMod2.stream = load("res://Assets/Sound/Music/Stress/" + track + "_2.mp3")
	$StressMod3.stream = load("res://Assets/Sound/Music/Stress/" + track + "_3.mp3")
	$StressMod4.stream = load("res://Assets/Sound/Music/Stress/" + track + "_4.mp3")

func _set_current_stress_player(level: int):
	match level:
		1:
			$StressMod1.volume_db = 0
			$StressMod2.volume_db = -80
			$StressMod3.volume_db = -80
			$StressMod4.volume_db = -80
			self.volume_db = -80
		2:
			$StressMod1.volume_db = -80
			$StressMod2.volume_db = 0
			$StressMod3.volume_db = -80
			$StressMod4.volume_db = -80
			self.volume_db = -80
		3:
			$StressMod1.volume_db = -80
			$StressMod2.volume_db = -80
			$StressMod3.volume_db = 0
			$StressMod4.volume_db = -80
			self.volume_db = -80
		4:
			$StressMod1.volume_db = -80
			$StressMod2.volume_db = -80
			$StressMod3.volume_db = -80
			$StressMod4.volume_db = 0
			self.volume_db = -80
		_:
			$StressMod1.volume_db = -80
			$StressMod2.volume_db = -80
			$StressMod3.volume_db = -80
			$StressMod4.volume_db = -80
			self.volume_db = 0
