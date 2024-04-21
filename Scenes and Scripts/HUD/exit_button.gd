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
	get_tree().quit()


func _on_mouse_entered():
	mouse_inside = true
func _on_mouse_exited():
	mouse_inside = false
