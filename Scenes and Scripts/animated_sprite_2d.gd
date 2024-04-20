extends AnimatedSprite2D



func _ready():
	$".".visible = true
	

func _on_animation_finished():
	$".".visible = false
