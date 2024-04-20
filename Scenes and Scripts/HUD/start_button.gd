extends TextureButton

var no_shader = preload("res://Shaders/no_shader.tres")
var outline_shader = preload("res://Shaders/outline.tres")
var mouse_inside = false


func _process(delta):
	if mouse_inside:
		$".".material = outline_shader
	else:
		$".".material = no_shader



func _on_pressed():
	$UI.stream = load("res://Assets/Sound/SFX/UI/ui_click.wav")
	$UI.play()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes and Scripts/level.tscn")




func _on_mouse_entered():
	mouse_inside = true
	$UI.stream = load("res://Assets/Sound/SFX/UI/ui_hover.wav")
	$UI.play()
func _on_mouse_exited():
	mouse_inside = false
