extends Control

var outline_shader = preload("res://Shaders/outline.tres")
var no_shader = preload("res://Shaders/no_shader.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_mouse_entered():
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_hover.wav")
	%UI.play()
	$TextureButton.material = outline_shader

func _on_texture_button_mouse_exited():
	$TextureButton.material = no_shader


func _on_texture_button_pressed():
	%UI.stream = load("res://Assets/Sound/SFX/UI/ui_click.wav")
	%UI.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://Scenes and Scripts/start_menu.tscn")
