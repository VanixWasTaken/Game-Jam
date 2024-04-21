extends Control

var outline_shader = preload("res://Shaders/outline.tres")
var no_shader = preload("res://Shaders/no_shader.tres")


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
	$VBoxContainer.visible = true


func _on_retry_pressed():
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_click.wav")
	%UI.play()
	await get_tree().create_timer(0.5).timeout
	Global.highscore = 0
	Global.lights_out = true
	get_tree().change_scene_to_file("res://Scenes and Scripts/level.tscn")



func _on_menu_pressed():
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_click.wav")
	%UI.play()
	await get_tree().create_timer(0.5).timeout
	Global.highscore = 0
	Global.lights_out = true
	MusicController._play_music("nocturnal_ember")
	get_tree().change_scene_to_file("res://Scenes and Scripts/start_menu.tscn")

func _on_quit_pressed():
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_click.wav")
	%UI.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()


func _on_retry_mouse_entered():
	$VBoxContainer/Retry.material = outline_shader
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_hover.wav")
	%UI.play()
func _on_retry_mouse_exited():
	$VBoxContainer/Retry.material = no_shader


func _on_menu_mouse_entered():
	$VBoxContainer/Menu.material = outline_shader
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_hover.wav")
	%UI.play()
func _on_menu_mouse_exited():
	$VBoxContainer/Menu.material = no_shader


func _on_quit_mouse_entered():
	$VBoxContainer/Quit.material = outline_shader
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_hover.wav")
	%UI.play()
func _on_quit_mouse_exited():
	$VBoxContainer/Quit.material = no_shader
